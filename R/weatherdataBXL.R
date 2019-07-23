#' Historical weather data of station 064510-99999 in Brussels
#'
#' Holds the data for weather station 064510-99999 extracted from ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-lite/
#'
#' @format A data frame with 474999 rows and 10 variables:
#' \describe{
#'   \item{year}{Year of observation, rounded to nearest whole hour}
#'   \item{month}{Month of observation, rounded to nearest whole hour}
#'   \item{day}{Day of observation, rounded to nearest whole hour}
#'   \item{hour}{Hour of observation, rounded to nearest whole hour}
#'   \item{timepoint}{Timepoint of the observation}
#'   \item{temperature}{The temperature of the air , UNITS: Degrees Celsius, missing value -9999}
#'   \item{sea.level.pressure}{FThe air pressure relative to Mean Sea Level (MSL)}
#'   \item{wind.direction}{The angle, measured in a clockwise direction, between true north and the direction from which the wind is blowing}
#'   \item{wind.speed.rate}{The rate of horizontal travel of air past a fixed point.}
#'   \item{sky.condition}{The code that denotes the fraction of the total celestial dome covered by clouds or other obscuring phenomena.}
#'   }
#' @source \url{ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-lite/}
"weatherdataBXL"

