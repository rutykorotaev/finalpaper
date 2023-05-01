#### Preamble ####
# Purpose: Simulates the dataset
# Author: Ruty Korotaev
# Date: 17 April 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

  
#### Workspace setup ####
library(tidyverse)

#### Simulate dataset for Russian artist popularity of the first six months of the war ####
set.seed(123)
russianartists <- round(runif(n = 6, min = 5, max = 30))

df <- data.frame(Months = 1:6, Russian_Music = russianartists)     
df |>
  ggplot(mapping = aes(x = Months, y = Russian_Music)) +
  geom_line() +
  geom_point()

#### Lint script
library(lintr)
lint("00-simulate_data.R")