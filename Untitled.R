if (!file.exists("data")) {
  dir.create("data")
}

fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "camera.csv", method ="curl")
list.files("./data")
dateDownloaded <- date()
dateDownloaded


