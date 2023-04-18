#Download data take 2


library(tidyverse)
library(spotifyr)
library(usethis)

#take three
library(dplyr)
library(tidyverse)
library(spotifyr)
library(usethis)
edit_r_environ()
summary(okeanelzy_info)
okeanelzy_info$name
okeanelzy_info$popularity


okeanelzy_info <- get_artist_popularity(get_artist("6NTzEgUmN1PIBIYEHhf1kS", authorization = my_app))


oe_set <- filter(okeanelzy_info, name, popularity)
head(oe_set)