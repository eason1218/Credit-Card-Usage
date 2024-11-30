#### Preamble ####
# Purpose: Simulates polling data with support percentages and vote counts for candidates across multiple pollsters.
# Author: YiZhuo Li
# Date: 25 November 2024
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed


#### Workspace setup ####
library(tidyverse)
set.seed(853)


# Generate 1000 random simulation data
n <- 1000
# UsedCard: 0 or 1
UsedCard <- sample(0:1, n, replace = TRUE)
# Sex: 0 or 1
Sex <- sample(0:1, n, replace = TRUE)

# Age: Random integer between 15 and 75
Age <- sample(15:75, n, replace = TRUE)

# Income: Randomly generate 1, 2, 3, 4, 5
Income <- sample(1:5, n, replace = TRUE)

# Emp: 0 or 1
Emp <- sample(0:1, n, replace = TRUE)

# Sex_Emp:Generated directly based on the logical interaction of Sex and Emp
Sex_Emp <- as.numeric(Sex & Emp)

# Merge data
simulated_data <- data.frame(UsedCard, Sex, Age, Income, Emp, Sex_Emp)


# View the result
head(simulated_data)

#### Save data ####
write_csv(simulated_data, "./data/00-simulated_data/simulated_data.csv")
