#### Preamble ####
# Purpose: Downloads and saves the data from Spotify API
# Author: Ruty Korotaev
# Date: 17 April 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(spotifyr)
library(usethis)
library(spotifyr)
edit_r_environ()

#### Spotify API Credentials ####
Sys.setenv(SPOTIFY_CLIENT_ID = "ba5b6ccdd3f046249ccd418246b3f1aa")
Sys.setenv(SPOTIFY_CLIENT_SECRET = "6d20e6a0f53a451399380db65df7ab83")
my_app <- get_spotify_access_token()

#### Download audio feature data ####
raufandfaik_audio <- get_artist_audio_features("Rauf & Faik")
noizemc_audio <- get_artist_audio_features("Noize MC")
egorkreed_audio <- get_artist_audio_features("Egor Kreed")
jony_audio <- get_artist_audio_features("Jony")
eldzhey_audio <- get_artist_audio_features("Eldzhey")

okeanelzy_audio <- get_artist_audio_features("Okean Elzy")
kalush_audio <- get_artist_audio_features("kalush")
skryabin_audio <- get_artist_audio_features("skryabin")
boombox_audio <- get_artist_audio_features("boombox")
alyona_audio <- get_artist_audio_features("alyona alyona")

#### Get artist info and popularity information ####
raufandfaik_info <- get_artist("0a3zDmrvmZcORfPeONPvfL", authorization = my_app)
noizemc_info <- get_artist("69v4ZOOomf1TNp59YYB1j7", authorization = my_app)
egorkreed_info <- get_artist("2KoLmBXwsgMkfAvoPBlPmb", authorization = my_app)
jony_info <- get_artist("2ISiyx4DLCMAMBCvPesCoq", authorization = my_app)
eldzhey_info <- get_artist("0Cm90jv892OeEegB3ELmvN", authorization = my_app)

okeanelzy_info <- get_artist("6NTzEgUmN1PIBIYEHhf1kS", authorization = my_app)
kalush_info <- get_artist("46rVVJwHWNS7C7MaWXd842", authorization = my_app)
skryabin_info <- get_artist("5RqIkHQnXRZlm1ozfSS1IO", authorization = my_app)
boombox_info <- get_artist("2c3PFZtun8HemDbDfRPV6G", authorization = my_app)
alyona_info <- get_artist("2ic3GGGmkixOZP4qnakSA8", authorization = my_app)

#### Save data ####

saveRDS(taylor_swift, "taylor_swift.rds")

# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
