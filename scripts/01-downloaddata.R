#### Preamble ####
# Purpose: Downloads and saves the data from Spotify API
# Author: Ruty Korotaev
# Date: 10 April 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(spotifyr)
library(usethis)

#### Get artist info and popularity information ####
oxxxymiron <- get_artists("1gCOYbJNUa1LBVO5rlx0jB", authorization = token)
noizemc <- get_artists("69v4ZOOomf1TNp59YYB1j7", authorization = token)
face <- get_artists("2z20q6EEfm6w6PiIKsgtb3", authorization = token)
icepeak <- get_artists("3luonLzvSOxdU8ytCaEIK8", authorization = token)
maxkorzh <- get_artists("5meD8C7oGK5yUEY2T7ZZ7W", authorization = token)
skriptonite <- get_artists("3vvLuXEEf7sl3izJcw0GIn", authorization = token)
basta <- get_artists("7as5DY4Rz9jac9tgoTrj9H", authorization = token)
eldzhey <- get_artists("0Cm90jv892OeEegB3ELmvN", authorization = token)

#### Get data on related artists which shows Spotify's recommendations for certain artists ####
oxxxymiron_related <- get_related_artists("1gCOYbJNUa1LBVO5rlx0jB", authorization = token)
noizemc_related <- get_related_artists("69v4ZOOomf1TNp59YYB1j7", authorization = token)
face_related <- get_related_artists("2z20q6EEfm6w6PiIKsgtb3", authorization = token)
icepeak_related <- get_related_artists("3luonLzvSOxdU8ytCaEIK8", authorization = token)
maxkorzh_related <- get_related_artists("5meD8C7oGK5yUEY2T7ZZ7W", authorization = token)
skriptonite_related <- get_related_artists("3vvLuXEEf7sl3izJcw0GIn", authorization = token)
basta_related <- get_related_artists("7as5DY4Rz9jac9tgoTrj9H", authorization = token)
eldzhey_related <- get_related_artists("0Cm90jv892OeEegB3ELmvN", authorization = token)

#### Save data ####

write_csv(noizemc, "inputs/data/noizemcinfo.csv")
write_csv(oxxxymiron, "inputs/data/oxxxymiron.csv") 
write_csv(face, "inputs/data/face.csv") 
write_csv(icepeak, "inputs/data/icepeak.csv")
write_csv(maxkorzh, "inputs/data/maxkorzh.csv")
write_csv(skriptonite, "inputs/data/skriptonite.csv")
write_csv(basta, "inputs/data/basta.csv")
write_csv(eldzhey, "inputs/data/eldzhey.csv")

write_csv(oxxxymiron_related, "inputs/data/oxxymironrelated.csv") 
write_csv(noizemc_related, "inputs/data/noizemc_related.csv")
write_csv(face_related, "inputs/data/face_related.csv")
write_csv(icepeak_related, "inputs/data/icepeak_related.csv")
write_csv(maxkorzh_related, "inputs/data/maxkorzh_related.csv") 
write_csv(skriptonite_related, "inputs/data/skriptonite_related.csv")
write_csv(basta_related, "inputs/data/basta_related.csv")
write_csv(eldzhey_related, "inputs/data/eldzhey_related.csv")

#### Lint script
library(lintr)
lint("001-downloaddata.R")
