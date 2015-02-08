plot3 <- function(subdata){
  ##Set the parameters to 1 plot at a time...
  par(mfrow = c(1, 1))
  
  ##Add new column with Date-Time values...
  subdata <- mutate( subdata, DateTime = as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S") )
  
  ##Vector to set the colors for each line...
  color_vector = c("black", "blue", "red")
  
  ##Build plot, first with plot, then using lines to write more lines over the original plot...
  with(subdata, plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", col = color_vector[1]))
  with(subdata, lines(DateTime, Sub_metering_2, col = color_vector[2]))
  with(subdata, lines(DateTime, Sub_metering_3, col = color_vector[3]))
  ##Add the labels...
  legend("topright", lty = 1, col = color_vector, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}