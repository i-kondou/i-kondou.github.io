# Run from the repository root after jekyll build.
require "bibtex"
require "nokogiri"
require "yaml"

def check(condition, location, expected)
  abort "#{location}: expected #{expected}" unless condition
end

def page(directory, route)
  path = File.join(directory, route, "index.html")
  abort "Missing #{path}. Build the site before running this check." unless File.file?(path)
  Nokogiri::HTML(File.read(path, encoding: "UTF-8"))
end

def check_wording(text, required, pattern, location)
  if required
    check(text.match?(pattern), location, pattern.inspect)
  else
    check(!text.match?(/under review|査読中/i), location, "no unconfirmed review claim")
  end
end

output = ARGV.fetch(0, "_site")
entries = BibTeX.open("_bibliography/papers.bib").entries
activities = YAML.safe_load_file("_data/activities.yml")
home_items = activities.reject { |item| item["home"] == false }.first(6)
announcements = activities.select { |item| item["tag"] == "プレプリント" || item["tag_en"] == "Preprint" }
preprints = entries.values.select do |entry|
  entry[:category].to_s == "プレプリント" || entry[:howpublished].to_s.start_with?("arXiv:")
end
preprints_by_url = preprints.to_h { |entry| [entry[:url].to_s, entry.key] }

reviewed_values = { "under-review" => "false", "unreviewed" => "false", "unspecified" => "" }
preprints.each do |entry|
  status = entry[:review_status].to_s
  check(entry[:category].to_s == "プレプリント", entry.key, "category = {プレプリント}")
  check(reviewed_values.key?(status), entry.key, "an explicit review_status (#{reviewed_values.keys.join(', ')}); see SITE_CONTENT.md")
  check(entry[:reviewed].to_s == reviewed_values[status], entry.key, "reviewed to match #{status} (see SITE_CONTENT.md)")
  if status == "under-review"
    check(entry[:note].to_s == "Under review", entry.key, "note = {Under review}")
  else
    check(!entry[:note].to_s.match?(/under review|査読中/i), entry.key, "a note consistent with #{status}")
  end
end

{ "ja" => "", "en" => "en/" }.each do |lang, prefix|
  publications = page(output, "#{prefix}publications")
  activity_page = page(output, "#{prefix}activities")
  home = page(output, prefix)
  preprints.each do |entry|
    location = "#{lang} publications ##{entry.key}"
    record = publications.at_css("article[id='#{entry.key}'][data-kind='プレプリント']")
    check(record, location, "a preprint in the publication list")
    status = entry[:review_status].to_s
    badge = record.at_css(".venue-tag")
    check(badge && badge["data-review"] == status, location, "a #{status} badge")
    label = record.at_css(".review-status")&.text.to_s.strip
    check(!label.empty?, location, "a visible review label")
    check_wording(label, status == "under-review", /\AUnder review\z/, "#{location} badge")
    exported = BibTeX.parse(record.at_css(".bibtex-details code")&.text.to_s).entries[entry.key]
    check(exported && exported[:note].to_s == entry[:note].to_s, location, "exported BibTeX with the source note")
  end

  announcements.each do |item|
    location = "#{lang} activities ##{item['id']}"
    entry = entries[item["work"]]
    check(entry && item["work_page"] == "publications", location, "work pointing to a publication key")
    source_key = preprints_by_url[item["url"]]
    check(!source_key || entry.key == source_key, location, "work matching the announcement URL (#{source_key})")
    activity = activity_page.at_css("li[id='#{item['id']}']")
    target = "/#{prefix}publications/##{entry.key}"
    check(activity && activity.css(".activity-links a").any? { |a| a["href"] == target }, location, "a link to #{target}")
    # An older announcement may now link to a published journal or conference version.
    next unless preprints.include?(entry)

    under_review = entry[:review_status].to_s == "under-review"
    detail = lang == "ja" ? /査読中（Under review）/ : /\bunder review\b/i
    check_wording(activity.at_css("article p")&.text.to_s, under_review, detail, "#{location} description")
    position = home_items.index(item)
    next unless position

    url = (item["home"] || {})["url"] || item.fetch("url")
    link = home.css(".news-list a")[position]
    location = "#{lang} home (#{item['id']})"
    check(link && link["href"] == url, location, "an announcement linking to #{url}")
    ending = lang == "ja" ? /（Under review）。\z/ : /\(under review\)\.\z/
    check_wording(link.text.strip, under_review, ending, location)
  end
end

puts "Checked #{preprints.size} preprints and #{announcements.size} announcements in Japanese and English."
