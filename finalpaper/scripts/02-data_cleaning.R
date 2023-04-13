#### Preamble ####
# Purpose: Cleans the dataset
# Author: Ruty Korotaev
# Date: 17 April 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)
library(readr)

#### Clean data: Create one dataset with Russian performers, and another with Ukrainian ones ####

#### Russian performers dataset #####
raufandfaik_audio <- read_csv("finalpaper/inputs/data/raufandfaikaudio.csv")
noizemc_audio <- read_csv("finalpaper/inputs/data/noizemcaudio.csv")
egorkreed_audio <- read_csv("finalpaper/inputs/data/egorkreedaudio.csv")
jony_audio <- read_csv("finalpaper/inputs/data/jonyaudio.csv")         
eldzhey_audio <- read_csv("finalpaper/inputs/data/eldzheyaudio.csv")

# Create column to identify artists 
raufandfaik_audio$artist <- "Rauf & Faik"
noizemc_audio$artist <- "Noize MC"
egorkreed_audio$artist <- "Egor Kreed"
jony_audio$artist <- "Jony"
eldzhey_audio$artist <- "Eldzhey"

# Combine all dataframes into one dataset
russian_performers <- rbind(raufandfaik_audio, noizemc_audio, egorkreed_audio, jony_audio, eldzhey_audio)

#### Ukrainian performers dataset ####
okeanelzy_audio <- read_csv("finalpaper/inputs/data/okeanelzyaudio.csv")
kalush_audio <- read_csv("finalpaper/inputs/data/kalushaudio.csv")
skryabin_audio <- read_csv("finalpaper/inputs/data/skryabinaudio.csv")
boombox_audio <- read_csv("finalpaper/inputs/data/boomboxaudio.csv") 
alyona_audio <- read_csv("finalpaper/inputs/data/alyonaaudio.csv")

# Create column to identify artists 
okeanelzy_audio$artist <- "Okean Elzy"
kalush_audio$artist <- "Kalush"
skryabin_audio$artist <- "Skryabin"
boombox_audio$artist <- "Boombox"
alyona_audio$artist <- "Alyona Alyona"

# Combine all dataframes into one dataset
ukrainian_performers <- rbind(okeanelzy_audio, kalush_audio, skryabin_audio, boombox_audio, alyona_audio)

#### Save cleaned data ####

# change cleaned_data to whatever name you end up with at the end of cleaning
write_csv(russian_performers, "finalpaper/outputs/russian_performers.csv")
write_csv(ukrainian_performers, "finalpaper/outputs/ukrainian_performers.csv")

