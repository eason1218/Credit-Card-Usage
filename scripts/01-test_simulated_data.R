#### Preamble ####
# Purpose: Tests the structure and validity of the simulated simulate_data
# Author: YiZhuo Li
# Date: 25 November 2024
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed

#### Workspace setup ####
library(tidyverse)

# load simulate_data
simulate_data <- read.csv("./data/00-simulated_data/simulated_data.csv")

# Check that the simulate_data are all numeric
is_numeric <- all(sapply(simulate_data, is.numeric))
if (is_numeric) {
  message("Test Passed: All the simulate_data is numeric.")
} else {
  stop("Test Failed: There are also non-numeric simulate_data in the simulate_data.")
}

# Check whether there are still missing values in the simulate_data frame.
no_nan <- !any(is.na(simulate_data))
if (is_numeric) {
  message("Test Passed: No missing values present.")
} else {
  stop("Test Failed: Missing values are present in the simulate_data frame.")
}

# Check whether the UsedCard includes only 0 and 1.
type_UsedCard <- all(simulate_data$UsedCard %in% c(0, 1))
if (type_UsedCard) {
  message("Test Passed: UsedCard only includes 0 and 1.")
} else {
  stop("Test Failed: There are other values in UsedCard")
}

# Check whether the Sex includes only 0 and 1.
type_Sex <- all(simulate_data$UsedCard %in% c(0, 1))
if (type_Sex) {
  message("Test Passed: Sex only includes 0 and 1.")
} else {
  stop("Test Failed: There are other values in Sex")
}

# check whether Income is only five values are 1, 2, 3, 4, 5
type_Income <- all(simulate_data$UsedCard %in% c(0, 1))
if (type_Income) {
  message("Test Passed: Income only includes 1, 2, 3, 4, 5.")
} else {
  stop("Test Failed: There are other values in Income")
}

# Check whether Emp only includes 0 and 1.
type_Emp <- all(simulate_data$Emp %in% c(0, 1))
if (type_Emp) {
  message("Test Passed: Emp only includes 0 and 1.")
} else {
  stop("Test Failed: There are other values in Emp")
}

# Check whether the interaction item Sex_Emp only includes 0 and 1.
type_Sex_Emp <- all(simulate_data$Emp %in% c(0, 1))
if (type_Sex_Emp) {
  message("Test Passed: Sex_Emp only includes 0 and 1.")
} else {
  stop("Test Failed: There are other values in Sex_Emp")
}
