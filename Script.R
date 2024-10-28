library(tidyverse)
library(terra)
f <- vect("tl_2023_us_aiannh.shp") ##keep ALL the files in the zip or it breaks!
f <- subset(f, f$GEOIDFQ == "2520000US5590R")
plot(f)
OK <- vect("COUNTY_BOUNDARY.shp")
library(maptiles)
bg <- get_tiles(ext(OK))
plotRGB(bg)
lines(f, col="blue", lwd=3)
df <- OK |> data.frame()



OK <- subset(OK, OK$COUNTY_NAM == names)
names <- c("ATOKA", "BRYAN", "CHOCTAW", "COAL", "HASKELL", "HUGHES", "JOHNSTON", "LATIMER", "LE FLORE", "MCCURTAIN", "PITTSBURG", "PONTOTOC", "PUSHMATAHA")
