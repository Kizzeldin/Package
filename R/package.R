library(devtools)
library(usethis)
library(here)

usethis::use_r("Function_OR.R")
devtools::load_all()
toydata <- read.table(here("toydata.txt"), header = TRUE)
usethis::use_data(toydata)
