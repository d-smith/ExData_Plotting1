generatePlot4 <- function() {

  ## Load data and open device
  source("./loaddataset.R")
  getData()
  data <- loadAndFilterData()
  png(filename="./plot4.png", width=480, height=480)
  
  ## 2x2 layout
  par(mfrow=c(2,2))
  
  ## 1st plot
  with(data, plot(DateTime,Global_active_power,type="l",ylab="Global Active Power",xlab=""))
  
  ## 2nd plot
  with(data, plot(DateTime,Voltage, type="l", xlab="datetime"))
  
  ## 3rd plot
  with(data, plot(DateTime, Sub_metering_1, type = "n", ylab="Energy sub metering",xlab=""))
  with(data, lines(DateTime, Sub_metering_1, col = "black"))
  with(data, lines(DateTime, Sub_metering_2, col = "red"))
  with(data, lines(DateTime, Sub_metering_3, col = "blue"))
  legend("topright",col=c("black","red","blue"),lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
  ## 4th plot
  with(data, plot(DateTime,Global_reactive_power,type="l", xlab="datetime"))
  
  ## Close device
  dev.off()
  
}