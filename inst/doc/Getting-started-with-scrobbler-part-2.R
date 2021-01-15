## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE--------------------------------------------------------------
#  library(scrobbler)

## ---- eval=FALSE--------------------------------------------------------------
#  my_songs <- download_scrobbles(
#    username = "your_username",
#    api_key = "your_api_key"
#    )

## ---- echo=FALSE--------------------------------------------------------------
# Having issues rendering the .Rmd when loading data from csv, so just creating a short df here
my_songs <- structure(list(song_mbid = c("192915d7-c2df-44f6-9e08-b7d80745bdd3", 
"6dd374d1-e707-4de0-89b3-889fbb7d7bad", "45d25340-5791-4f93-a642-94494b057646", 
"0f361896-d6fc-4179-9987-47bf59437c83", "34d419dd-eaf7-48de-b4df-704c61463cd7", 
"3c8fe6d5-66ac-3b8b-a3f5-36f63fcff693", "0050b4bf-21d2-47f2-a306-4af3dad79018", 
"4d834fbe-e72d-3e06-88d9-da4945421182", "0ddd52c6-45ed-4064-add0-5d0f0f29af34", 
"0651a786-0711-4ab8-8eee-148d277c143a"), song_title = c("So Soon", 
"B Team", "Toy Soldiers", "Stutter", "Fallout", "Porcelain", 
"Desperate Measures", "Truth Or Dare", "By Now", "My World"), 
    artist_mbid = c("e358276d-4377-4b9b-88dd-db0d17b0e3c6", "e358276d-4377-4b9b-88dd-db0d17b0e3c6", 
    "e358276d-4377-4b9b-88dd-db0d17b0e3c6", "e358276d-4377-4b9b-88dd-db0d17b0e3c6", 
    "e358276d-4377-4b9b-88dd-db0d17b0e3c6", "e358276d-4377-4b9b-88dd-db0d17b0e3c6", 
    "e358276d-4377-4b9b-88dd-db0d17b0e3c6", "e358276d-4377-4b9b-88dd-db0d17b0e3c6", 
    "e358276d-4377-4b9b-88dd-db0d17b0e3c6", "0103c1cc-4a09-4a5d-a344-56ad99a77193"
    ), artist = c("Marianas Trench", "Marianas Trench", "Marianas Trench", 
    "Marianas Trench", "Marianas Trench", "Marianas Trench", 
    "Marianas Trench", "Marianas Trench", "Marianas Trench", 
    "Avril Lavigne"), X.attr.nowplaying = c("true", NA, NA, NA, 
    NA, NA, NA, NA, NA, NA), album_mbid = c("180bb020-8349-4031-b8a3-bb544a396d84", 
    "180bb020-8349-4031-b8a3-bb544a396d84", "180bb020-8349-4031-b8a3-bb544a396d84", 
    "180bb020-8349-4031-b8a3-bb544a396d84", "180bb020-8349-4031-b8a3-bb544a396d84", 
    "180bb020-8349-4031-b8a3-bb544a396d84", "180bb020-8349-4031-b8a3-bb544a396d84", 
    "180bb020-8349-4031-b8a3-bb544a396d84", "180bb020-8349-4031-b8a3-bb544a396d84", 
    "002a0094-40b7-4403-99ab-f3b0daeffacd"), album = c("Ever After", 
    "Ever After", "Ever After", "Ever After", "Ever After", "Ever After", 
    "Ever After", "Ever After", "Ever After", "Let Go"), date_unix = c(NA, 
    1608151945L, 1608151694L, 1608151493L, 1608151238L, 1608150918L, 
    1608150689L, 1608150459L, 1608150203L, 1608118840L), date = c(NA, 
    "16 Dec 2020, 20:52", "16 Dec 2020, 20:48", "16 Dec 2020, 20:44", 
    "16 Dec 2020, 20:40", "16 Dec 2020, 20:35", "16 Dec 2020, 20:31", 
    "16 Dec 2020, 20:27", "16 Dec 2020, 20:23", "16 Dec 2020, 11:40"
    )), row.names = c(NA, 10L), class = "data.frame")

my_songs$X.attr.nowplaying <- NULL

my_songs

## ---- eval=FALSE--------------------------------------------------------------
#  updated_songs <- update_scrobbles(data = my_songs,
#                                    timestamp_column = "date_unix",
#                                    username = "your_username",
#                                    api_key = "your_api_key"
#                                    )

