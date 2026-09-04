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

Welcome back to our newsletter! This month, we introduce the jmpdata
package with the sanitation data behind the WHO/UNICEF Joint Monitoring
Programme estimates, show it as our first dataset of the month, and
share an update of the washopenresearch package with a look at where
WASH data papers deposit their data. We also announce quarto-owd, our
Quarto extension for PDF and Word documents in the openwashdata brand.

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

## 📊 Dataset of the Month: jmpdata

Starting with this issue, each newsletter shows one chart made from the
data of a featured package. The first chart shows the raw data points in
jmpdata per year. These 26,926 data points are the basis for the 424,575
modelled estimates that the JMP publishes.

![Bar chart of survey-level sanitation data points in the JMP raw data
per year, from 1991 to 2024. Most years since 2000 hold between 500 and
1,800 data points, with a peak of 1,805 in 2018 and fewer points in the
most recent years.](images/card-jmpdata.png)

26,926 observations \| 232 countries and territories \| CC BY 4.0 \|
<https://openwashdata.github.io/jmpdata>

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

The brand itself has reached version 1.0.0. Its guide shows the palette,
the typeface, the logos and dark mode, and how each tool reads the file:
<https://openwashdata.github.io/brand/>

To start a document:

    quarto use template openwashdata/quarto-owd

In an existing project, `quarto add openwashdata/quarto-owd` and
`quarto use brand openwashdata/brand` do the same. Data package authors
who have run `washr::use_brand()` already have the brand file in place
and only need `quarto add openwashdata/quarto-owd`.

Repository and documentation:
<https://github.com/openwashdata/quarto-owd>

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
