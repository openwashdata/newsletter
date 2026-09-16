# card.R: dataset-of-the-month card helpers
#
# Builds the dataset-of-the-month card described in strategy.md: one
# chart made from the data of a featured openwashdata package, plus a
# stats line with the number of observations, the countries covered,
# the license, and a link to the package site.
#
# Usage in an issue .qmd (card-template.qmd holds a worked example):
#
#   source("R/card.R")
#   card <- owd_card_stats("jmpdata", dataset = "jmpraw")
#   p <- owd_card_plot(card)
#   img <- owd_card_save(p, card, alt = "One sentence that describes
#     the chart for readers who cannot see it")
#
# Then place `r img` and `r owd_card_line(card)` in the issue body.
# owd_card_plot() gives a default chart (observations per year). For
# a different chart, build your own ggplot on card$data and pass it
# to owd_card_save() unchanged.

# openwashdata colors, taken from the website theme
# (openwashdata/website: styles.css and style/theme.scss)
owd_colors <- c(
  purple = "#5b195b",
  gray = "#959595",
  dark = "#1e1e1e"
)

# Collect the card facts for one package.
#
# pkg:       package name, e.g. "jmpdata". The package must be
#            installed: pak::pak(paste0("openwashdata/", pkg))
# dataset:   name of the dataset to use. Defaults to the first
#            dataset in the package.
# countries: optional override for the countries entry. A number is
#            printed as "<n> countries"; a character string is
#            printed as given, e.g. "Kampala, Uganda" or
#            "232 countries and territories". When NULL, the count
#            is derived from a country column if one exists, and the
#            entry is dropped from the stats line otherwise.
owd_card_stats <- function(pkg, dataset = NULL, countries = NULL) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    stop("Package '", pkg, "' is not installed. Run: ",
      "pak::pak(\"openwashdata/", pkg, "\")", call. = FALSE)
  }

  available <- data(package = pkg)$results[, "Item"]
  if (is.null(dataset)) {
    dataset <- available[[1]]
  }
  if (!dataset %in% available) {
    stop("Dataset '", dataset, "' not found in '", pkg,
      "'. Available: ", paste(available, collapse = ", "),
      call. = FALSE)
  }

  env <- new.env()
  data(list = dataset, package = pkg, envir = env)
  df <- env[[dataset]]

  if (is.null(countries)) {
    candidates <- c("iso3", "iso3c", "iso_a3", "country",
      "country_name", "countries")
    hit <- intersect(candidates, tolower(names(df)))
    if (length(hit) > 0) {
      col <- names(df)[tolower(names(df)) == hit[[1]]][[1]]
      n <- length(unique(stats::na.omit(df[[col]])))
      countries <- paste(n, "countries")
    }
  } else if (is.numeric(countries)) {
    countries <- paste(countries, "countries")
  }

  list(
    pkg = pkg,
    dataset = dataset,
    data = df,
    n_obs = nrow(df),
    countries = countries,
    license = utils::packageDescription(pkg)$License,
    url = paste0("https://openwashdata.github.io/", pkg)
  )
}

# One-line stats string for the issue body, e.g.
# "26,926 observations | 232 countries | CC BY 4.0 | <site>"
owd_card_line <- function(card) {
  parts <- c(
    paste(format(card$n_obs, big.mark = ","), "observations"),
    card$countries,
    card$license,
    paste0("<", card$url, ">")
  )
  paste(parts, collapse = " | ")
}

# Minimal chart theme in the openwashdata look.
theme_owd <- function() {
  ggplot2::theme_minimal(base_size = 12) +
    ggplot2::theme(
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(
        color = owd_colors[["dark"]], face = "bold"
      ),
      plot.subtitle = ggplot2::element_text(
        color = owd_colors[["gray"]]
      )
    )
}

# Default card chart: observations per year, as a bar chart in the
# openwashdata purple. Uses a "year" column if present, otherwise
# the year of the first Date column. Add labs() to the returned plot
# to adjust titles, or replace it with your own ggplot on card$data.
owd_card_plot <- function(card) {
  df <- card$data
  if ("year" %in% names(df)) {
    years <- floor(df[["year"]])
  } else {
    date_cols <- names(df)[vapply(df, inherits, logical(1), "Date")]
    if (length(date_cols) == 0) {
      stop("No 'year' or Date column in '", card$dataset,
        "'. Build a ggplot on card$data instead.", call. = FALSE)
    }
    years <- as.integer(format(df[[date_cols[[1]]]], "%Y"))
  }
  counts <- as.data.frame(table(year = years), stringsAsFactors = FALSE)
  counts$year <- as.integer(counts$year)

  ggplot2::ggplot(counts, ggplot2::aes(x = year, y = Freq)) +
    ggplot2::geom_col(fill = owd_colors[["purple"]]) +
    ggplot2::labs(
      title = paste0(card$dataset, ": observations per year"),
      x = NULL,
      y = "Observations"
    ) +
    theme_owd()
}

# Save the chart as the card image asset and return the markdown
# image line. Alt text is required for every card image.
owd_card_save <- function(plot, card, alt, dir = "images",
                          width = 7, height = 4.2, dpi = 300) {
  if (missing(alt) || !is.character(alt) || !nzchar(trimws(alt))) {
    stop("Provide alt text: one or two sentences that describe the ",
      "chart for readers who cannot see it.", call. = FALSE)
  }
  alt <- gsub("\\s+", " ", trimws(alt))
  if (!dir.exists(dir)) {
    dir.create(dir, recursive = TRUE)
  }
  path <- file.path(dir, paste0("card-", card$pkg, ".png"))
  ggplot2::ggsave(path, plot = plot, width = width, height = height,
    dpi = dpi, bg = "white")
  sprintf("![%s](%s)", alt, path)
}
