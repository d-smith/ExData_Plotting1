generatePlot1 <- function() {
  source("./loaddataset.R")
  getData()
  data <- loadAndFilterData()
  png(filename="./plot1.png", width=480, height=480)
  with(data,hist(Global_active_power,xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red", main="Global Active Power"))
  dev.off()
}
