generatePlot2 <- function() {
  source("./loaddataset.R")
  getData()
  data <- loadAndFilterData()
  png(filename="./plot2.png", width=480, height=480)
  plot(data$DateTime, data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
  dev.off()
}