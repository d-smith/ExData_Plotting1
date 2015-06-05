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

loadAndFilterData <- function() {
  data <- read.csv("./household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors=FALSE,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings=c("?"))
  data$Date <- as.Date(data$Date,"%d/%m/%Y")
  data <- subset(data, Date >= as.Date("2007-02-01","%Y-%m-%d"))
  data <- subset(data, Date < as.Date("2007-02-03","%Y-%m-%d"))
  data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
  data
}



