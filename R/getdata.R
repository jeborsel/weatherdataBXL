require(readr)
require(dplyr)
download.file("ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-lite/2019/064510-99999-2019.gz","data-raw/064510-99999-2019.gz")

newdata <- read_fwf("data-raw/064510-99999-2019.gz",
              fwf_widths(widths = c(5, 3, 3, 2, 6, 6, 6, 6, 6),
                         col_names=c("year", "month", "day", "hour", "temperature.air", "sea.level.pressure",
                                     "wind.direction", "wind.speed.rate", "sky.condition")))
newdata$timepoint <- as.POSIXct(sprintf("%s-%s-%s %s:00:00", newdata$year, newdata$month, newdata$day, newdata$hour))
newdata$temperature <- newdata$temperature.air/10
load("~/weatherdataBXL/data/weatherdataBXL.rda")
weatherdataBXL<-bind_rows(weatherdataBXL,x) %>% distinct() %>% select(-c(temperature.air))
