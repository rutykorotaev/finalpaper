#### Preamble ####
# Purpose: Clean the dataset
# Author: Ruty Korotaev
# Date: 17 April 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

# Workspace setup
library(tidyverse)
library(readr)
library(dplyr)

# Combine and clean info datasets to just include follower counts, popularity scores, and artist identifying details
# Use read_csv function to read in each dataset
noizemc <- read_csv("inputs/data/noizemcinfo.csv")
oxxxymiron <- read_csv("inputs/data/oxxxymiron.csv")
face <- read_csv("inputs/data/face.csv")
icepeak <- read_csv("inputs/data/icepeak.csv")
maxkorzh <- read_csv("inputs/data/maxkorzh.csv")
skriptonite <- read_csv("inputs/data/skriptonite.csv")
basta <- read_csv("inputs/data/basta.csv")
eldzhey <- read_csv("inputs/data/eldzhey.csv")

# Select necessary columns about followers, popularity, and artist details from each dataset
noizemc <- select(noizemc, followers.total, name, id, popularity)
oxxxymiron <- select(oxxxymiron, followers.total, name, id, popularity)
face <- select(face, followers.total, name, id, popularity)
icepeak <- select(icepeak, followers.total, name, id, popularity)
maxkorzh <- select(maxkorzh, followers.total, name, id, popularity)
skriptonite <- select(skriptonite, followers.total, name, id, popularity)
basta <- select(basta, followers.total, name, id, popularity)
eldzhey <- select(eldzhey, followers.total, name, id, popularity)

# Combine into one dataset
clean_info_dataset <- bind_rows(noizemc, oxxxymiron, face, icepeak, maxkorzh, skriptonite, basta, eldzhey)

# Go through each "related" dataset and remove unnecessary columns 
noizemc_related_clean <- select(noizemc_related, name, id, followers.total, popularity, genres)
oxxxymiron_related_clean <- select(oxxxymiron_related, name, id, followers.total, popularity, genres)
face_related_clean <- select(face_related, name, id, followers.total, popularity, genres)
icepeak_related_clean <- select(icepeak_related, name, id, followers.total, popularity, genres)
maxkorzh_related_clean <- select(maxkorzh_related, name, id, followers.total, popularity, genres)
skriptonite_related_clean <- select(skriptonite_related, name, id, followers.total, popularity, genres)
basta_related_clean <- select(basta_related, name, id, followers.total, popularity, genres)
eldzhey_related_clean <- select(eldzhey_related, name, id, followers.total, popularity, genres)

# Save cleaned data
write_csv(clean_info_dataset, "inputs/data/clean_info_dataset.csv")

write_csv(oxxxymiron_related_clean, "inputs/data/oxxymironrelated_clean.csv") 
write_csv(noizemc_related_clean, "inputs/data/noizemc_related_clean.csv")
write_csv(face_related_clean, "inputs/data/face_related_clean.csv")
write_csv(icepeak_related_clean, "inputs/data/icepeak_related_clean.csv")
write_csv(maxkorzh_related_clean, "inputs/data/maxkorzh_related_clean.csv") 
write_csv(skriptonite_related_clean, "inputs/data/skriptonite_related_clean.csv")
write_csv(basta_related_clean, "inputs/data/basta_related_clean.csv")
write_csv(eldzhey_related_clean, "inputs/data/eldzhey_related_clean.csv")

# Lint script
library(lintr)
lint("03-data_cleaning.R")
