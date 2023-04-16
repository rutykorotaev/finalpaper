#### Preamble ####
# Purpose: Tests dataset for duplicates and other issues
# Author: Ruty Korotaev
# Date: 17 April 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)

#### Test data ####

#Test 1: Use unique function to ensure there are no duplicates in dataset
russian_performers |> unique()
ukrainian_performers |> unique()

#Test 2: Use validator and is.numeric function to ensure all values are regarded as numeric

library(validate)
rules <- validator(
  is.numeric(artist_name),
  is.numeric(album_release_year),
  is.numeric(danceability),
  is.numeric(energy),
  is.numeric(key),
  is.numeric(mode),
)
