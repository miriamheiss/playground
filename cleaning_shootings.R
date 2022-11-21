library(readr)
library(janitor)
library(lubridate)
library(tidyverse)
library(plotly)


shootings_raw <- read_csv("shootings.csv")


state_shootings <- shootings_raw %>% 
  clean_names() 


julyfourthshootings <- state_shootings %>% 
  arrange(state) %>% 
  filter(incident_date == "July 4, 2022")




  
  