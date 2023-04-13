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

#### Save data (two files for each artist because there are two datasets) ####

write_csv(raufandfaik_audio, "inputs/data/raufandfaikaudio.csv")
write_csv(raufandfaik_info, "inputs/data/raufandfaikinfo.csv")

write_csv(noizemc_info, "inputs/data/noizemcinfo.csv")
write_csv(noizemc_audio, "inputs/data/noizemcaudio.csv")

write_csv(egorkreed_info, "inputs/data/egorkreedinfo.csv")
write_csv(egorkreed_audio, "inputs/data/egorkreedaudio.csv")

write_csv(jony_info, "inputs/data/jonyinfo.csv")
write_csv(jony_audio, "inputs/data/jonyaudio.csv")         

write_csv(eldzhey_info, "inputs/data/eldzheyinfo.csv")
write_csv(eldzhey_audio, "inputs/data/eldzheyaudio.csv")

write_csv(okeanelzy_info, "inputs/data/okeanelzyinfo.csv")
write_csv(okeanelzy_audio, "inputs/data/okeanelzyaudio.csv")

write_csv(kalush_info, "inputs/data/kalushinfo.csv")
write_csv(kalush_audio, "inputs/data/kalushaudio.csv")

write_csv(skryabin_info, "inputs/data/skryabininfo.csv")
write_csv(skryabin_audio, "inputs/data/skryabinaudio.csv")

write_csv(boombox_info, "inputs/data/boomboxinfo.csv")
write_csv(boombox_audio, "inputs/data/boomboxaudio.csv") 

write_csv(alyona_info, "inputs/data/alyonainfo.csv")
write_csv(alyona_audio, "inputs/data/alyonaaudio.csv")
