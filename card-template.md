---
editor_options:
  chunk_output_type: console
engines:
- path: /Applications/RStudio.app/Contents/Resources/app/quarto/share/extension-subtrees/julia-engine/\_extensions/julia-engine/julia-engine.js
title: "Dataset of the month: card template"
toc-title: Table of contents
---

This file documents the dataset-of-the-month card from strategy.md. Each
issue shows one chart made from the data of a featured openwashdata
package, together with a stats line: number of observations, countries
covered, license, and a link to the package site. The helpers live in
`R/card.R`. Preparing a card for an issue takes 30 minutes or less:

1.  Set the package name (and dataset name) in the first chunk below.
2.  Keep the default chart from `owd_card_plot()`, which shows
    observations per year, or replace it with your own ggplot on
    `card$data`.
3.  Write the alt text. `owd_card_save()` refuses to save without it.
4.  Copy the chunks and the two inline lines into the issue `.qmd`.

The chart is saved to `images/card-<package>.png` so it can also be
posted to LinkedIn and the website in the week the issue goes out.

The worked example below uses the fslogisticskampala package and
replaces the default chart with trips per week by treatment plant.
Rendering this file produces the finished card.

::: cell
``` {.r .cell-code}
pkg <- "fslogisticskampala"

if (!requireNamespace(pkg, quietly = TRUE)) {
  pak::pak(paste0("openwashdata/", pkg))
}

source("R/card.R")

card <- owd_card_stats(pkg, dataset = "trips",
  countries = "Kampala, Uganda")
```
:::

The `countries` argument is optional. Without it, the count is derived
from a country column (`iso3`, `country`, and similar) when the dataset
has one, and dropped from the stats line otherwise. Here the dataset
covers one city, so the override names it.

::: cell
``` {.r .cell-code}
library(dplyr)
library(ggplot2)

trips_week <- card$data |>
  mutate(week = as.Date(cut(date, "week"))) |>
  count(week, plant)

p <- ggplot(trips_week, aes(x = week, y = n, fill = plant)) +
  geom_col() +
  scale_fill_manual(values = unname(owd_colors[c("purple", "gray")])) +
  labs(
    title = "Faecal sludge truck trips per week in Kampala",
    subtitle = "5,653 recorded trips, March to June 2015",
    x = NULL,
    y = "Trips",
    fill = "Treatment plant"
  ) +
  theme_owd()

img <- owd_card_save(p, card, alt = "Bar chart of faecal sludge
  truck trips per week in Kampala between March and June 2015, split
  by treatment plant. Lubigi receives more trips than Bugolobi in
  most weeks, and weekly totals rise from about 250 trips in early
  April to around 700 in early June.")
```
:::

The rendered card, as it appears in the issue:

![Bar chart of faecal sludge truck trips per week in Kampala between
March and June 2015, split by treatment plant. Lubigi receives more
trips than Bugolobi in most weeks, and weekly totals rise from about 250
trips in early April to around 700 in early
June.](images/card-fslogisticskampala.png)

5,653 observations \| Kampala, Uganda \| CC BY 4.0 \|
<https://openwashdata.github.io/fslogisticskampala>
