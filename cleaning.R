library(tidyverse)
library(lubridate)
library(plotly)

polls_raw <- read_csv("governor_polls.csv")

polls_cleaner <- polls_raw %>% 
  select(party, state, pct, candidate_name, created_at) %>% 
  separate(created_at, into = c("date", "time"), sep = " ") %>% 
filter(party == "DEM", date == "11/7/22")

polls_clean <- polls_raw %>% 
  mutate(election_date = mdy(election_date),
         poll_date = mdy(end_date)) %>% 
  mutate(election_month = month(election_date),
         election_year = year(election_date),
         poll_month = month(election_date)) %>% 
  filter(election_month == 11 & election_year == 2022 &
           poll_month %in% c(10, 11))

top_polled <- polls_clean %>% 
  count(candidate_name) %>% 
  arrange(desc(n)) %>% 
  slice(1:20)

polling_averages <- polls_clean %>% 
  filter(candidate_name %in% top_polled$candidate_name) %>% 
  group_by(candidate_name, party) %>% 
  summarize(avg_pct = mean(pct),
            sd_pct = sd(pct),
            se = sd_pct / sqrt(n())) %>% 
  ungroup() %>% 
  mutate(conf.low = avg_pct - 2*se,
         conf.high = avg_pct + 2*se) %>% 
  arrange(avg_pct) %>% 
  mutate(candidate_name = fct_inorder(candidate_name))

qwerqwerqwer <- qwer %>% 
  filter(election_month == 11 & election_year == 2022) %>% 
  count(candidate_name)

cleanish <- polls_cleaner %>% 
  select(party, state, pct, candidate_name, date, time) %>% 
  distinct() 

asdf <- cleanish %>% 
  arrange(candidate_name, desc(time)) %>% 
  group_by(candidate_name) %>% 
  slice(1) %>% 
  ungroup() %>% 
  arrange(pct) %>% 
  mutate(state = fct_inorder(state))

canvas_nebula(colors = c("pink", "orange", "white", "red"))
canvas_nebula(colors = c("purple", "violet", "white", "slateblue"))



canvas_petri(colors = c("powderblue", "white"))
canvas_petri(colors = colorPalette("origami"))
