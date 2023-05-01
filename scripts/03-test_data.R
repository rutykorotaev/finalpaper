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

#Test 1: Use unique function to ensure there are no duplicates in each dataset
clean_info_dataset |> unique()
noizemc_related_clean |> unique()
oxxxymiron_related_clean |> unique()
face_related_clean |> unique()
icepeak_related_clean |> unique()
maxkorzh_related_clean |> unique()
skriptonite_related_clean |> unique()
basta_related_clean |> unique()
eldzhey_related_clean |> unique()

#Test 2: Use validator and is.numeric function to ensure all values are regarded as numeric

library(dplyr)
library(validate)
rules <- validator(
  is.numeric(popularity),
  is.numeric(followers.total)
)

# Lint script
library(lintr)
lint("03-test_data.R")
