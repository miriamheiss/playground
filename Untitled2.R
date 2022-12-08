library(tidycensus)

georgia <- get_acs(geography = "county", state = "13", variables = "B19013_001", year = 2021, dataset = "acs5")

# Income in Georgia counties

gwinnett <- get_acs(geography = "county", state = "Georgia", variables = "B19013_001", year = 2021, county = "Gwinnett", dadtaset = "acs5")

thing <- get_acs(geography = "state", table = "S2902", year = 2021)

random_variable <- load_variables(year = 2021, dataset = "acs5")

# B01001 is sex, age and race

get_estimates(geography = "county", product = "components", state = "13", county = "Gwinnett", year = "2020")
