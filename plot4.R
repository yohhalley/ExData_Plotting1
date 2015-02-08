plot4 <- function(subdata){
  ##Set the parameters to get 4 plots at a time...
  par(mfrow = c(2, 2))
  
  ##Add new column with Date-Time values...
  subdata <- mutate( subdata, DateTime = as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S") )
  
  ##Vector to set the colors for each line...
  color_vector = c("black", "blue", "red")
  
  with(subdata, {
    ##First plot(upper left)
    plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power")
    ##Second plot(upper right)
    plot(DateTime, Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
    ##Third plot(lower left)
    plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", col = color_vector[1])
    lines(DateTime, Sub_metering_2, col = color_vector[2])
    lines(DateTime, Sub_metering_3, col = color_vector[3])
    legend("topright", lty = 1, col = color_vector, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    ##Fourth plot(lower right)
    plot(DateTime, Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
  })

}