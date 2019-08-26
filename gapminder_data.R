if (!file.exists("data")) {
  dir.create("data")
}

fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "camera.csv", method ="curl")
list.files("./data")
dateDownloaded <- date()
dateDownloaded

library(dslabs)
data("gapminder")
library(ggplot2)
library(dplyr)

tab <- filter(gapminder, year <= 2010 & year >= 1960  & (country == "Vietnam" | country == "United States"))
tab

p <- ggplot(tab, aes(year, life_expectancy, color=country)) + geom_line()
p

