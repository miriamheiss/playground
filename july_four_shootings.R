library(tidyverse)
library(plotly)


julyfourth <- julyfourthshootings %>% 
  ggplot(mapping = aes(x = number_killed,
                       y = number_injured,
                       color = state,
                       text = city_or_county,
                       size = number_injured)) +
  geom_point(position = position_jitter(width = .1, height = 0))+
  scale_color_manual(values = met.brewer("Redon", 10))+
  scale_x_continuous(breaks = c(1, 2, 3, 4, 5, 6, 7, 8))+
  theme_bw(base_size = 12)+
  labs(title = "Mass Shootings on July 4, 2022",
       y = "Injured",
       x = "Killed",
       color = "State",
       size = NULL)

ggplotly(plot = "julyfourth", tooltip = "text")


