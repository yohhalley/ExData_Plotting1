plot2 <- function(subdata){
##Set the parameters to 1 plot at a time...
par(mfrow = c(1, 1))
  
##Add new column with Date-Time values...
subdata <- mutate( subdata, DateTime = as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S") )

##Build histogram...
with(subdata, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))
}