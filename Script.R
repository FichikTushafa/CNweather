library(tidyverse)
library(terra)
library(maptiles)

#create CN plot
CN <- vect("tl_2023_us_aiannh.shp") ##keep ALL the files in the zip or it breaks!
CN <- subset(CN, CN$GEOIDFQ == "2520000US5590R")

#create OK counties plot
Counties <- vect("COUNTY_BOUNDARY.shp")
Counties <- subset(Counties, Counties$COUNTY_NO %in% c("3", "7", "12",
                                     "15", "31", "32",
                                     "35", "39", "40",
                                     "45", "61", "62", "64")) #this might not actually be necessary

#plot counties cropped to CN borders
SEOK <- crop(Counties, CN)

#download map
bg <- get_tiles(ext(CN), crop = TRUE, zoom = 10)

#crop map to CN borders
SEOKbg <- mask(bg, CN) #'crop' yields rectangles only, use 'mask' for irregular crops

#plot cropped map
plot(SEOKbg)

#add border and county lines
lines(SEOK, col="blue", lwd=3)
