plot1 <- function(subdata){
  ##Set the parameters to 1 plot at a time...
  par(mfrow = c(1, 1))

  ##Transform variables into numerical...
  subdata$Global_active_power = as.numeric(subdata$Global_active_power)
  
  ##Build histogram...
  hist(subdata$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power" )
}