---
date: 2026-10-05
editor_options:
  chunk_output_type: console
engines:
- path: /Applications/RStudio.app/Contents/Resources/app/quarto/share/extension-subtrees/julia-engine/\_extensions/julia-engine/julia-engine.js
title: openwashdata Newsletter - Issue 23
toc-title: Table of contents
---

[View this email in your browser]({{ email_url }})

Welcome back to our newsletter! This month, openwashdata has a new look,
with a brand guide and a reworked landing page. We introduce the jmpdata
package with the sanitation data behind the WHO/UNICEF Joint Monitoring
Programme estimates, show solidwastekampala, a new package on household
waste in Kampala, as our first dataset of the month, share an update of
the washopenresearch package with a look at where WASH data papers
deposit their data, pass on two reflections by Emmanuel Mhango on his
year as Data Steward at BASEflow Malawi, announce quarto-owd, our Quarto
extension for PDF and Word documents in the openwashdata brand, and
thank Charles Niwagaba as our contributor of the month.

## 🎨 A new look for openwashdata

openwashdata has a brand guide. One file defines the colours, the
typography and the logos, and the website and this newsletter read their
look from it. The palette keeps our purple and orange, with the orange
darkened so that it reads well as text, and adds green, red and grey
accents. All text is set in Atkinson Hyperlegible Next, a typeface
designed for legibility at small sizes and for readers with low vision.
The guide shows the palette with its contrast table, the logos and their
rules, a dark mode, and themed charts and tables.

The website is the first place to see it. openwashdata.org now takes its
colours, fonts and logos from the brand files and comes with a light and
a dark mode. The landing page has a new layout as well: it shows the
datasets we publish, the latest blog posts and upcoming events at a
glance, together with the dataset of the month, and has a button to
subscribe to this newsletter.

[Browse the brand guide](https://openwashdata.github.io/brand/)

## 📦 New package: jmpdata

We published the jmpdata R package, which provides the sanitation data
behind the WHO/UNICEF Joint Monitoring Programme for Water Supply,
Sanitation and Hygiene (JMP). The package replaces our earlier jmpinput
package under a new name and contains two datasets:

- `jmpraw`: 26,926 survey-level sanitation data points collected from
  censuses and household surveys
- `jmpindicators`: 424,575 modelled estimates published by the JMP

The package comes with a rebuilt update pipeline, so future JMP releases
can be added as they are published, together with a report of what
changed between releases. The 2023 JMP release is no longer available
upstream; we recovered it from the Wayback Machine and included it in
the package. Comparing releases shows that the 2025 JMP release added
9,372 raw sanitation data points over 2021. The modelled estimates for
safely managed sanitation rest on comparatively few raw data points.

- `jmpdata` - <https://openwashdata.github.io/jmpdata>: Input Data and
  Indicator Estimates from the WHO/UNICEF Joint Monitoring Programme

[Read all notes and what has
changed](https://github.com/openwashdata/jmpdata/releases/tag/v0.1.0)

## 📊 Dataset of the Month: solidwastekampala

Starting with this issue, each newsletter shows one chart made from the
data of a featured package. The first is solidwastekampala, a new data
package from Makerere University with the quantity and composition of
domestic solid waste from 103 households in three Kampala parishes of
low, middle and high income, weighed over one week. Waste per person
rises with income, from 0.43 to 0.98 kg per day, and food makes up at
least three quarters of the mass in every parish.

- `solidwastekampala` -
  <https://openwashdata.github.io/solidwastekampala>: Quantity and
  Composition of Domestic Solid Waste in Kampala City

![Stacked bar chart of the share of household waste mass by category for
the low, middle and high income parishes in Kampala. Food makes up 75 to
82 percent in each parish. Garden and wood, plastics and polythene,
other waste, paper and textiles, and glass and metals share the
rest.](images/card-solidwastekampala.png)

103 observations \| Kampala, Uganda \| CC BY 4.0 \|
<https://openwashdata.github.io/solidwastekampala>

## 🔍 Updated washopenresearch package

We published an update of the washopenresearch R package, which collects
information on open research data practice in the WASH sector. The
update adds two datasets: ploswater, covering papers published in PLOS
Water, and datapapers, covering WASH data papers. The washdev dataset
now covers the Journal of Water, Sanitation and Hygiene for Development
through volume 16.

The datapapers dataset holds a finding that connects to the publication
avenues we wrote about in the last issue: of the eight WASH data papers
identified, seven deposit their data in general repositories, and none
uses a WASH sector platform.

Visit the package's website for more information:
<https://openwashdata.github.io/washopenresearch/>

[Read all notes and what has
changed](https://github.com/openwashdata/washopenresearch/releases/tag/v0.3.0)

## Branded PDF and Word documents with quarto-owd

Reports about openwashdata datasets can now carry the openwashdata look
without manual formatting. quarto-owd is a Quarto extension with two
output formats: `owd-typst` produces a PDF through Typst, `owd-docx` a
Word document. Both take their colours, fonts and logo from the brand
definition in the openwashdata/brand repository, the same file that
styles the data package websites since washr 1.1.0. Version 0.4.0 puts
the title, authors and abstract on a cover page with the table of
contents, starts the body on page 1, and styles tables in both formats.

The extension reads the same brand file as the website, so a report and
the site share one look.

To start a document:

    quarto use template openwashdata/quarto-owd

In an existing project, `quarto add openwashdata/quarto-owd` and
`quarto use brand openwashdata/brand` do the same. Data package authors
who have run `washr::use_brand()` already have the brand file in place
and only need `quarto add openwashdata/quarto-owd`.

Repository and documentation:
<https://github.com/openwashdata/quarto-owd>

## 📄 Blog Highlights: a year as Data Steward at BASEflow Malawi

Emmanuel Mhango works as Data Steward at BASEflow Malawi within the
openwashdata project and has published five WASH datasets with us. He
wrote two reflections on that year, first published on LinkedIn and now
on our blog.

The first post starts with one question, what data does the organization
actually have, and follows the answer from a data inventory to a Data
Management Strategy, and to the lesson that data stewardship begins with
people. The second looks at what happened once BASEflow started
publishing data: the questions Open Science raised about ownership,
permission and documentation, and a groundwater dataset that UNICEF
Malawi used to identify where boreholes need attention.

- [I thought my job was about data. It turned out to be about
  people.](https://openwashdata.org/pages/blog/posts/2026-08-11-job-about-data/)
- [Beyond publishing data: what we learned building an open science
  culture at BASEflow
  Malawi](https://openwashdata.org/pages/blog/posts/2026-08-18-beyond-publishing-data/)

## 🌟 Contributor of the Month

Our contributor of the month is Charles Niwagaba of Makerere University,
who shared the household solid waste data behind the solidwastekampala
package with the community. The package names the whole team that
collected the data in Kampala as authors. Thank you, Charles.

## Get Involved

We believe the openwashdata project prospers when we have **YOU** work
together and promote open science and data practice! No matter what
background you are from, we come up with some ways for you to get
involved:

- [Join our chatroom to meet
  people!](https://openwashdata.org/pages/get-started/chat/)
- [Share your WASH data with
  us](https://openwashdata.org/pages/blog/posts/2024-05-17-data-publication-1/)
- Spread the word. Forward this email.
- Got more ideas? [Leave us a message on Matrix to
  collaborate!](https://matrix.to/#/%23openwashdata-lobby:staffchat.ethz.ch)
