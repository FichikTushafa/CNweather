library(tidyverse)
###terra
install.packages("terra")
library(terra)
f <- vect("tl_2023_us_aiannh.shp") ##keep ALL the files in the zip or it breaks!
f <-
subset(f, f$GEOIDFQ == "2520000US5590R")
plot(f)
