#### Preamble ####
# Purpose: Tests the structure and validity of the analysis data
# Author: YiZhuo Li
# Date: 25 November 2024
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed

#### Workspace setup ####
library(tidyverse)

## read the data
data <- read_csv("./data/02-analysis_data/analysis_data.csv")

#### Test data ####

# Check that the data are all numeric
is_numeric <- all(sapply(data, is.numeric))
if (is_numeric) {
  message("Test Passed: All the data is numeric.")
} else {
  stop("Test Failed: There are also non-numeric data in the data.")
}

# Check whether there are still missing values in the data frame.
no_nan <- !any(is.na(data))
if (is_numeric) {
  message("Test Passed: No missing values present.")
} else {
  stop("Test Failed: Missing values are present in the data frame.")
}

# Check whether the UsedCard includes only 0 and 1.
type_UsedCard <- all(data$UsedCard %in% c(0, 1))
if (type_UsedCard) {
  message("Test Passed: UsedCard only includes 0 and 1.")
} else {
  stop("Test Failed: There are other values in UsedCard")
}

# Check whether the Sex includes only 0 and 1.
type_Sex <- all(data$UsedCard %in% c(0, 1))
if (type_Sex) {
  message("Test Passed: Sex only includes 0 and 1.")
} else {
  stop("Test Failed: There are other values in Sex")
}

# check whether Income is only five values are 1, 2, 3, 4, 5
type_Income <- all(data$UsedCard %in% c(0, 1))
if (type_Income) {
  message("Test Passed: Income only includes 1, 2, 3, 4, 5.")
} else {
  stop("Test Failed: There are other values in Income")
}

# Check whether Emp only includes 0 and 1.
type_Emp <- all(data$Emp %in% c(0, 1))
if (type_Emp) {
  message("Test Passed: Emp only includes 0 and 1.")
} else {
  stop("Test Failed: There are other values in Emp")
}

# Check whether the interaction item Sex_Emp only includes 0 and 1.
type_Sex_Emp <- all(data$Emp %in% c(0, 1))
if (type_Sex_Emp) {
  message("Test Passed: Sex_Emp only includes 0 and 1.")
} else {
  stop("Test Failed: There are other values in Sex_Emp")
}
