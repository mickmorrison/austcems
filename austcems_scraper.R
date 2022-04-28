# Austcems_scraper
# A simple scraper for the Australian Cemeteries Index website
# https://austcemindex.com/
# Michael Morrison
# 7 April 2022

# Load libraries
library(tidyverse)
library(rvest)

# Create a new variable containing the URL of the search results
url <- read_html("https://austcemindex.com/?cemetery=1211&page=2")

# create a new variable listing the tables in the HTML
tables <- url %>% html_table(fill=TRUE)

# create a new variable containing the data from the cemetery index
data <- (tables[[2]])

# export the data variable containing cemetery inscriptions as a csv file
write.csv(data,"~/ownCloud/UNE/Teaching/HINQ302 Researching the Past in the Digital Age/Dev/austcems/test_lg_cem.csv")

