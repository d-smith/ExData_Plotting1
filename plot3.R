generatePlot3 <- function() {
  source("./loaddataset.R")
  getData()
  data <- loadAndFilterData()
  png(filename="./plot3.png", width=480, height=480)
  
  with(data, plot(DateTime, Sub_metering_1, type = "n", ylab="Energy sub metering"))
  with(data, lines(DateTime, Sub_metering_1, col = "black"))
  with(data, lines(DateTime, Sub_metering_2, col = "red"))
  with(data, lines(DateTime, Sub_metering_3, col = "blue"))
  legend("topright",col=c("black","red","blue"),lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  dev.off()
}