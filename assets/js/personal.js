(() => {
  const root = document.documentElement;
  const toggle = document.querySelector(".theme-toggle");
  const preference = window.matchMedia("(prefers-color-scheme: dark)");
  let savedTheme;
  try {
    savedTheme = localStorage.getItem("ik-theme");
  } catch (_) {
    /* Storage is optional. */
  }
  const applyTheme = (dark) => {
    root.dataset.theme = dark ? "dark" : "light";
    toggle?.setAttribute("aria-pressed", String(dark));
  };
  applyTheme(savedTheme ? savedTheme === "dark" : preference.matches);
  if (toggle) {
    toggle.hidden = false;
    toggle.addEventListener("click", () => {
      const dark = root.dataset.theme !== "dark";
      applyTheme(dark);
      savedTheme = dark ? "dark" : "light";
      try {
        localStorage.setItem("ik-theme", savedTheme);
      } catch (_) {
        /* Storage is optional. */
      }
    });
  }
  preference.addEventListener("change", (event) => {
    if (!savedTheme) applyTheme(event.matches);
  });
  const languageLink = document.querySelector(".language-link");
  if (languageLink) {
    const updateLanguageLink = () => {
      const target = new URL(languageLink.href);
      target.hash = window.location.hash;
      languageLink.href = target.href;
    };
    updateLanguageLink();
    window.addEventListener("hashchange", updateLanguageLink);
  }
  const filters = document.querySelector(".publication-filters");
  if (!filters) return;
  const publications = Array.from(document.querySelectorAll(".publication-list .publication"));
  const status = document.querySelector(".filter-status");
  filters.hidden = false;
  filters.addEventListener("click", (event) => {
    const button = event.target.closest("button[data-filter]");
    if (!button) return;
    filters.querySelectorAll("button").forEach((item) => item.setAttribute("aria-pressed", String(item === button)));
    let count = 0;
    publications.forEach((publication) => {
      const show = button.dataset.filter === "all" || publication.dataset.kind === button.dataset.filter;
      publication.closest("li").hidden = !show;
      if (show) count += 1;
    });
    const itemLabel = count === 1 ? filters.dataset.itemSingular : filters.dataset.itemPlural;
    status.textContent = root.lang === "en" ? `${count} ${itemLabel} shown` : `${count}件を表示`;
  });
})();
