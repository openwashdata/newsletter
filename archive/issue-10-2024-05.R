library(tidyverse)
library(googlesheets4)
metadata <-googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1vtw16vpvJbioDirGTQcy0Ubz01Cz7lcwFVvbxsNPSVM/edit#gid=0")
metadata <- metadata |> filter(!is.na(id))

ggplot(data = metadata) +
  geom_bar(aes(x = location, fill = source)) +
  labs(title = "openwashdata Published Datasets",
       subtitle = "Where is the data from and where it focuses on?",
       x = "Data Coverage Location", y = NULL) +
  theme_classic() +
  guides(fill = guide_legend(position = "top"))
