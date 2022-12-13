library(tidycensus)

georgia <- get_acs(geography = "county", state = "13", variables = "B19013_001", year = 2021, dataset = "acs5")

# Income in Georgia counties

gwinnett <- get_acs(geography = "county", state = "Georgia", variables = "B19013_001", year = 2021, county = "Gwinnett", dadtaset = "acs5")

thing <- get_acs(geography = "state", table = "S2902", year = 2021)

random_variable <- load_variables(year = 2021, dataset = "acs5")

# B01001 is sex, age and race

get_estimates(geography = "county", product = "components", state = "13", county = "Gwinnett", year = "2020")

maine_counties <- get_acs(state = "Maine", geography = "county", variables = c(hhimcome = "B19013_001"), year = 2021)


maine_counties %>% 
ggplot(mapping = aes(x = estimate, y = reorder(NAME, estimate))) +
  geom_pointrange(aes(xmax = estimate + moe, xmin = estimate - moe))
