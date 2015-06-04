downloadZip <- function() {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl, destfile="./dataset.zip", method="curl")
}

getData <- function() {
  if(!file.exists("./household_power_consumption.txt")) {
    downloadZip()
    unzip("./dataset.zip")
  }
}



