#### Preamble ####
# Purpose: Clean the raw data
# Author: YiZhuo Li
# Date: 25 November 2024
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` and `readr` package must be installed

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
data <- read.csv("./data/01-raw_data/raw_data.csv")

data <- data[, c("fin8", "female", "age", "educ", "inc_q", "emp_in")]
colnames(data) <- c("UsedCard", "Sex", "Age", "Edu", "Income", "Emp")

unique_values <- lapply(colnames(data), function(column) {
  paste(column, paste(unique(data[[column]]), collapse = ", "))
})

data$UsedCard <- ifelse(data$UsedCard %in% c(3, 4), NA,
  ifelse(data$UsedCard == 2, 0, data$UsedCard)
)
data$Sex <- data$Sex - 1
data$Age[data$Age >= 75] <- NA
data$Edu <- ifelse(data$Edu %in% c(4, 5), NA, data$Edu)
data$Emp <- ifelse(data$Emp == 2, 0, data$Emp)

data <- na.omit(data)
data <- data.frame(lapply(data, as.numeric))
data$Sex_Emp <- data$Sex * data$Emp

#### Save data ####
write_csv(data, "./data/02-analysis_data/analysis_data.csv")
