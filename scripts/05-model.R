#### Preamble ####
# Purpose: build the model for analysis
# Author: YiZhuo Li
# Date: 25 November 2024
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` and `rstan` package must be installed

#### Workspace setup ####
library(tidyverse)
library(rstan)

## set up model
reg_data <- read.csv("./data/02-deal_data/analysis_data.csv")
model1 <- glm(UsedCard ~ Sex + Emp + Age + Income + Edu, data = reg_data, family = "binomial")
model2 <- glm(UsedCard ~ Sex + Emp + Sex_Emp + Age + Income + Edu, data = reg_data, family = "binomial")


#### Save model ####
saveRDS(model1, file = "./model/model1.rds")
saveRDS(model2, file = "./model/model2.rds")
