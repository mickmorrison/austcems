# Austcems_scraper
# A simple scraper for the Australian Cemeteries Index website
# https://austcemindex.com/

# Load libraries
library(tidyverse)
library(rvest)

# Do a loop to get all the pages of results
for(pages in 1:20){
  
# Create a new variable containing the URL of the search results
link = paste0("https://austcemindex.com/?cemetery=1211&page=", pages)
url <- read_html(link)

# create a new variable listing the tables in the HTML
tables <- url %>% html_table(fill=TRUE)

# create a new variable containing the data from the cemetery index
data <- (tables[[2]])

# export the data variable containing cemetery inscriptions as a csv file
write.csv(data,"~/ownCloud/UNE/Teaching/HINQ302 Researching the Past in the Digital Age/Dev/austcems/test_lg_cem.csv")
}
