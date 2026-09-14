# 個人サイトの情報管理

確認日: 2026-09-14

## 更新するファイル

- `_data/profile.yml`: 写真、外部リンク、研究キーワード、学歴、受賞、インターン（日英の文章）
- `_data/activities.yml`: ホームと活動ページで共有する活動記録。年月・種別・短文・見出し・説明・関連リンク（日英）
- `_data/locales.yml`: 日英の表示文言、紹介文、ナビゲーションのURL
- `_data/publication_translations.yml`: 論文の英訳タイトル・説明、著者名の英語表記
- `_bibliography/papers.bib`: 論文・発表の書誌情報。トップの主な論文には `selected = {true}` を指定
- `_pages/about.md`: 日本語ホーム
- `_pages/cv.md`、`_pages/publications.md`: 日本語のプロフィール・論文一覧
- `_pages/en.md`、`_pages/cv-en.md`、`_pages/publications-en.md`: 対応する英語ページ
- `_pages/presentations.md`、`_pages/presentations-en.md`: 研究会・ポスター発表
- `_pages/activities.md`、`_pages/activities-en.md`: 活動一覧。詳細な活動記録を年ごとに表示
- `_includes/personal-*.liquid`: 日英共通のページ構成。各ページの `lang` で表示文言を選ぶ
- `_layouts/personal.liquid`、`assets/css/personal.css`: 共通レイアウトとデザイン
- `assets/js/personal.js`: テーマ切り替え・論文絞り込み

## 掲載情報と出典

| 情報                         | 出典                                                                                                                                                                                                                                                                                    | 掲載方針                                                                                                                                                   |
| ---------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 氏名・現所属・修士課程在籍   | [肥後研究室のメンバー](https://sel.ist.osaka-u.ac.jp/people/)                                                                                                                                                                                                                           | 在籍は研究室で確認。学歴の年月はresearchmapで確認                                                                                                          |
| 顔写真                       | [researchmapの本人写真](https://researchmap.jp/i-kondo/avatar.jpeg)                                                                                                                                                                                                                     | ユーザー指定のresearchmapの写真に差し替え。ローカルに保存                                                                                                  |
| MV-SZZ書誌情報               | [研究室の論文データベース](https://sel.ist.osaka-u.ac.jp/lab-db/betuzuri/contents.ja/1338.html)                                                                                                                                                                                         | Vol. 52, No. 6, pp. 1911–1927。掲載月はresearchmapに従い2026年6月。研究室DBの日付は2026年4月28日。大学発表によるオンライン公開日は2026年5月1日（日本時間） |
| MV-SZZ公開報告・LinkedIn URL | [本人の公開投稿](https://www.linkedin.com/posts/inase-kondo-4b9a6439a_mv-szz-an-empirical-study-of-a-majority-activity-7455603657233940480-Gtra)                                                                                                                                        | 投稿を確認。インターン歴は本人プロフィールのExperience欄で別途確認                                                                                         |
| インターン参加歴             | [LinkedIn本人プロフィール](https://www.linkedin.com/in/inase-kondo-4b9a6439a/)                                                                                                                                                                                                          | ログイン済みChromeで所属先・期間・役割・Internship区分を確認。担当案件や成果は補完しない                                                                   |
| MSR論文・DOI・ページ         | [早稲田大学研究者DB](https://waseda.elsevierpure.com/en/publications/why-are-agentic-pull-requests-merged-or-rejected-an-empirical-stu/)、[会議公式](https://2026.msrconf.org/details/msr-2026-mining-challenge/15/Why-Are-Agentic-Pull-Requests-Merged-or-Rejected-An-Empirical-Study) | 著者全員を記載。本人単独の成果としない                                                                                                                     |
| MSR受賞                      | [研究室の受賞報告](https://sel.ist.osaka-u.ac.jp/topics/award_MSR2026_i-kondou/index.html.ja)                                                                                                                                                                                           | 2026年4月14日。共同研究による受賞                                                                                                                          |
| 研究奨励賞                   | [大阪大学情報科学研究科](https://www.ist.osaka-u.ac.jp/japanese/news/newsDetailNews.php?id=591)、[大阪大学の受賞一覧](https://www.osaka-u.ac.jp/ja/news/topics/2026/05/21001)                                                                                                           | 2025年度の賞、2026年4月受賞                                                                                                                                |
| 関数依存関係の研究           | [研究室の書誌情報](https://sel.ist.osaka-u.ac.jp/lab-db/betuzuri/contents.ja/1329.html)                                                                                                                                                                                                 | 国内研究会・査読なし                                                                                                                                       |
| 過去制約違反の研究           | [研究室の書誌情報](https://sel.ist.osaka-u.ac.jp/lab-db/betuzuri/contents.ja/1339.html)                                                                                                                                                                                                 | 公開HTMLを取得して著者と書誌を確認。国内研究会                                                                                                             |
| プレスリリース               | [九州大学](https://www.kyushu-u.ac.jp/ja/researches/view/1436)                                                                                                                                                                                                                          | 2026年5月公開                                                                                                                                              |
| GitHub                       | このリポジトリの `origin` が `i-kondou/i-kondou.github.io`                                                                                                                                                                                                                              | 所有アカウントへのリンクのみ                                                                                                                               |

論文の説明文は上記研究内容をもとに編集。未公表の実験結果は含まない。

## researchmapで追加確認した情報

本人ページ: https://researchmap.jp/i-kondo 。サイト内の研究者検索で氏名・所属が一致する1件を特定し、2026-09-14にブラウザで確認した。

- 学歴: 2025年4月〜現在、大阪大学大学院情報科学研究科。2021年4月〜2025年3月、大阪大学基礎工学部情報科学科。
- 公開連絡先: `i-kondou@ist.osaka-u.ac.jp`。画面上の@を目視確認。
- ORCID: `0009-0003-2907-9592`。
- [2026年9月の卓越研究賞](https://researchmap.jp/i-kondo/awards/54939912)。共同著者5名が記載されている。
- [2025年1月の研究会発表](https://researchmap.jp/i-kondo/misc/53655585)。124(326), pp. 104–109。
- [2026年9月11日のポスター発表](https://researchmap.jp/i-kondo/presentations/54939950)。論文として扱わず、ポスターとして分類。研究結果の数値は未掲載。
- MV-SZZの掲載月は2026年6月。大学発表による2026年5月1日のオンライン公開、および研究室DBの2026年4月28日付の登録と区別。

## LinkedInで確認したインターン歴

2026-09-14にログイン済みChromeで本人プロフィールのExperience欄を確認。ユーザーの指示に基づき、以下の3件を活動ページの日英版に掲載する。LinkedInの自動計算された在籍月数は使わず、開始・終了月を記載する。

| LinkedInの所属先表記                 | 期間                | 役割                   | 区分       |
| ------------------------------------ | ------------------- | ---------------------- | ---------- |
| 株式会社松尾研究所／Matsuo Institute | May 2026 – Present  | Research & Development | Internship |
| エムニ                               | Apr 2025 – Aug 2026 | AI Engineer            | Internship |
| NTT DATA, Inc.                       | Sep 2025            | Research & Development | Internship |

所属先・期間・役割を短く表示し、プロフィールへの出典リンクを付ける。ホームのニュースへの追加や、職務内容の推測は行わない。

会社名は略称を避け、日本語は[株式会社松尾研究所](https://www.matsuo-institute.com/company/)・[株式会社エムニ](https://www.emuniinc.jp/about)と表示する。英語は `Matsuo Institute, Inc.`（[gBizINFO](https://info.gbiz.go.jp/hojin/ichiran?hojinBango=3010001207706)）・`EMUNI, Inc.`（[同社の会社紹介資料](https://speakerdeck.com/emuniinc/enziniaxiang-kehui-she-shao-jie-zi-liao)の法人名表記）とする。NTT DATAは日英ともLinkedInの `NTT DATA, Inc.` を保持し、日本の別法人名には置き換えない。上の表は確認時のLinkedIn表記をそのまま残す。

## 未確認

- インターンでの担当案件・具体的な成果: 職歴欄に記載がないため未掲載。
- 学位名称・修士修了予定年月: 推測して掲載しない。
- 本一覧は確認できた論文・発表の範囲であり、全業績を網羅するとは断言しない。

## プレビューと公開

`docker compose up` で `http://localhost:8080` に表示。公開は既存のGitHub Actionsのデプロイ構成を使う。
`main` へのpushでサイトをビルドし、`gh-pages` ブランチ経由で `https://i-kondou.github.io/` に自動公開する。公開結果はGitHub Actionsと実際のサイトで確認する。
テンプレートのサンプル記事、架空のプロフィール、サンプルCVなどは `_config.yml` の除外設定で公開対象から外している。

## 表示方針

ユーザーの希望により、白地と標準的な文字組みを使うシンプルな研究者サイトに変更。大きな英字見出し、装飾的な写真枠、番号付きカードは使わない。

研究分野は「AI4SE」「Repository Mining」「Bugs」のキーワードのみ。ホーム冒頭の研究紹介文を省き、プロフィールも同じキーワードに統一。キーワードから各言語の関連論文へ移動できる。

ヘッダーはホーム・論文・発表・活動・プロフィールの5項目。「研究」のナビゲーションリンクは表示せず、ホーム内の研究キーワードは維持する。

## 日本語・英語の対応

| 日本語            | 英語                 |
| ----------------- | -------------------- |
| `/`               | `/en/`               |
| `/publications/`  | `/en/publications/`  |
| `/presentations/` | `/en/presentations/` |
| `/activities/`    | `/en/activities/`    |
| `/cv/`            | `/en/cv/`            |
| `/404.html`       | `/en/404.html`       |

`page_id` で同じページの日本語・英語を対応させる。EN/JPは対応先へ移動し、研究セクションや論文のアンカーも保持する。ナビゲーション、研究キーワードのリンク、フッターも選択中の言語に留まる。両言語で同じ査読付き論文2件・発表4件・主な論文2件・ホームの活動6件・活動一覧10件・学歴2件・受賞3件を表示する。

論文ページは `reviewed=true` の項目のみ。発表ページは `category=国内研究会` または `category=ポスター` の項目を表示する。フィルターも各ページの掲載種別に合わせる。ホームの本文・写真・主な論文・ニュースは維持し、移動した発表へのリンク先と「すべての論文」のラベルのみ調整した。

ホームと活動ページは、同じ `_data/activities.yml` を参照する。活動ページは年別に全件、ホームは `home: false` 以外の先頭6件を表示する。ファイルは最新順に保ち、新しい活動は該当する年月の位置に1件追加する。以前の `_data/profile.yml` の `news` は削除した。

各活動に `date`、`tag` / `tag_en`、`title` / `title_en`、`description` / `description_en`、`url` を記載する。ホーム専用の短文が必要な場合だけ、同じ項目の `home.title` / `home.title_en` に記載する。省略時は共通の `title` / `title_en` を使う。年月・種別・リンクは共通値を使い、表示上の違いが必要な場合だけ `home.tag` / `home.tag_en`、`home.url` で上書きできる。`home: false` の項目は活動ページだけに載せる。現在のホーム6件は従来の短文・タグ・リンクを維持した。

`id` は日英共通のアンカー、`work` と `work_page` は選択中の言語の論文・発表詳細へのリンクに使う。日付の意味を補足する場合は `date_note` / `date_note_en` を使う。

2026-09-14時点で、論文採択2件・研究会発表3件・ポスター発表1件・受賞3件・プレスリリース1件の計10件を掲載。発表は会議名・場所・題目と簡潔な内容を記載する。インターン歴は `_data/profile.yml` の `internships` に、`organization` / `organization_en`、`period` / `period_en`、必要に応じて `role` / `role_en`、`description` / `description_en`、`url` を記載する。空の間はインターン欄を表示しない。現在はLinkedInで確認した3件を掲載。

### 活動一覧の追加確認

- 活動ページの日付は、ユーザーの希望により日英とも `YYYY.MM` の年月表示に統一する。確認できた日付はデータに保持し、表示時に月までにする。
- SES 2026の開催地は[会議公式サイト](https://ses.sigse.jp/2026/)と[情報処理学会の開催案内](https://www.ipsj.or.jp/kenkyukai/event/s-ses2026.html)で確認した。活動の日英版に慶應義塾大学日吉キャンパス（神奈川県横浜市）を追記した。
- TSEの採択は[研究室の採録報告](https://sel.ist.osaka-u.ac.jp/topics/TSE_i-kondou/index.html.ja)で確認。採択通知日は未確認のため、日付は[大阪大学のプレスリリース](https://resou.osaka-u.ac.jp/ja/research/2026/20260508_2)で明記された2026-05-01（日本時間）を保持し、画面には「2026.05・オンライン公開月」と表示する。研究室DBの日付2026-04-28をオンライン公開日と扱っていた以前の解釈を訂正した。6月の巻号への掲載と区別する。
- MSR 2026の採択は[会議公式のMining Challengeプログラム](https://2026.msrconf.org/details/msr-2026-mining-challenge/15/Why-Are-Agentic-Pull-Requests-Merged-or-Rejected-An-Empirical-Study)で確認。採択通知日は未確認のため「2026.04・会議開催月」と表示する。共著者本人が登壇したとは推測しない。
- プレスリリースは[大阪大学の2026-05-08の発表](https://resou.osaka-u.ac.jp/ja/research/2026/20260508_2)と[九州大学の発表](https://www.kyushu-u.ac.jp/ja/researches/view/1436)を参照する。
- [2026年7月の研究室報告](https://sel.ist.osaka-u.ac.jp/topics/SIGSS202607/index.html.ja)とリンク先の公式プログラムから、札幌でのSIGSS・SIGSEなどの合同研究会と本人の発表を確認した。
- [2026年3月の研究室報告](https://sel.ist.osaka-u.ac.jp/topics/SIGSS202603/index.html.ja)と[書誌情報](https://sel.ist.osaka-u.ac.jp/lab-db/betuzuri/contents.ja/1329.html)から、対馬でのSIGSSと本人の発表を確認した。
- [2025年1月の研究室報告](https://sel.ist.osaka-u.ac.jp/topics/SIGSS202501/index.html.ja)から、鹿児島でのSIGSSと本人の発表を確認した。

日本語論文の英語題名は、このサイト用の翻訳であることを表示する。原題は展開して確認でき、BibTeXは原文の書誌情報を保つ。日本語の賞の英語名称も説明のための翻訳で、公式英語名称としては未確認。氏名の日本語表記には `lang="ja"` を指定する。外部サイトへのリンクは確認済みの出典URLを使う。

タグは「TSE 2026｜査読あり」のように、会議・誌名の略称、発表年、査読区分をまとめる。査読ありは青、査読なしは黄土色で区別し、文字ラベルも付ける。論文種別はタグの隣に表示する。

色とラベルはBibTeXの `reviewed` の値から決定する。値のない項目を査読なしに分類しない。SESのポスターはグレーの「SES 2026｜ポスター」として表示し、それ以外で値がない項目は「査読区分未記載」とする。英語版とダークモードにも対応する。

## 検証結果（2026-09-14）

- 活動データの共通化前後で、ホーム・活動ページの日英4ページの本文、HTML構造、年月表示、リンク先が同一であることを確認。
- Dockerで通常ビルドと `JEKYLL_ENV=production` のビルドが成功。
- 生成された12ページの内部リンク・参照アセット358件に欠落なし。
- 日英6組の対応URL、`hreflang`、ナビゲーションの現在位置、言語内の内部リンク、同一論文の掲載を検証。英語ページに意図しない日本語の本文が残っていないことを確認。
- 活動ページの日英版で、説明付きの活動10件と年別・論文・発表へのリンクを確認。英語版は390px幅でも横はみ出しなし。
- 活動ページの日英版で、LinkedInに記載されたインターン3件の所属先・期間・役割と、出典リンクの表示を確認。
- Prettier、JavaScript構文チェック、`git diff --check` が成功。
- 論文ページは学術論文1件・国際会議1件、発表ページは国内研究会3件・ポスター1件。絞り込みと、英語版での presentation(s) の結果表示を確認。BibTeXの展開を確認。
- トップページを390pxのiframe内で確認。表示幅と文書幅がともに390pxで、横はみ出しなし。
- 英語の論文ページも390px幅で横はみ出しなし。新しい論文タグをライト・ダーク両方で確認。
- 活動ページの英語版を390px幅で確認。ナビゲーションは3列で折り返し、横はみ出しなし。ホームの日英本文を変更前と比較し、リンク先・ラベル以外が同一であることを確認。
- 公開処理と同じPurgeCSSで、ダークモード・非表示制御・モバイル用のCSSが保持されることを確認。
- 上記はローカルでの検証結果。公開後のデプロイ結果はGitHub Actionsの実行履歴を参照。

## 外部プロフィールのアイコン

researchmapのアイコンは公式サイトのfavicon（https://researchmap.jp/favicon.ico?1684478673、実体はGIF）をローカル保存。GitHub・LinkedIn・ORCIDはテーマ同梱のScholar Iconsを利用。リンクの文字ラベルを残し、装飾アイコンは読み上げ対象から除外している。
