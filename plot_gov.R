ggplot(polling_averages,
       aes(x = avg_pct, y = candidate_name, color = party)) +
  scale_color_manual(values = c("midnightblue", "gold2", "firebrick3")) +
  geom_pointrange(aes(xmin = conf.low, xmax = conf.high)) +
  labs(title = "Polling Accuracy Oct-Nov 2022",
       subtitle = "Democrats have more accurate polls",
       y = NULL,
       x = "Percentage of Votes",
       color = "Party")