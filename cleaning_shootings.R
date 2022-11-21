library(readr)
library(janitor)
library(lubridate)
library(tidyverse)
library(plotly)


shootings_raw <- read_csv("shootings.csv")


state_shootings <- shootings_raw %>% 
  clean_names() 

highland <- state_shootings %>% 
  filter(city_or_county == "Highland Park")

julyfourthshootings <- state_shootings %>% 
  arrange(state) %>% 
  filter(incident_date == "July 4, 2022")


 
  
  ggplotly(plot = "julyfourth", tooltip = "text")



  
  