#### Preamble ####
# Purpose: Make the analysis data to parquet
# Author: YiZhuo Li
# Date: 25 November 2024
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` and `readr` package must be installed

library(dplyr)
library(arrow)

#### Clean data ####
data <- read.csv("./data/02-analysis_data/analysis_data.csv")

#### Save data ####
write_parquet(data, "./data/02-analysis_data/analysis_data.parquet")
