library(tidyverse)

pres_past_raw<- read.csv("president_primary_polls_historical.csv") 

pres_past_clean <- pres_past_raw %>% 
  select(answer, candidate_name, pct, start_date, party) %>% 
  filter(party == "DEM") %>% 
  distinct()

pres_past_clean



library(dygraphs)

  dygraph(pres_past_clean)
  dyRangeSelector(dateWindow = c("1/1/20","4/27/20")) 