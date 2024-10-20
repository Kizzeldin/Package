library(devtools)
library(usethis)
usethis::use_r("Function_OR.R")
devtools::load_all()

library(here)
toydata <- read.table(here("toydata.txt"), header = TRUE)
