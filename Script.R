library(tidyverse)
###terra
install.packages("terra")
library(terra)
f <- vect("tl_2023_us_aiannh.shp")
plot(f, col = f$NAME == "Choctaw")
df <- f |> data.frame
df <-
  df |>
  filter(GEOIDFQ == "2520000US5590R")
CN <- vect(df, geom=c("lon", "lat"), crs="", keepgeom=
             TRUE)
f <-
subset(f, f$GEOIDFQ == "2520000US5590R")
plot(
  f
)
