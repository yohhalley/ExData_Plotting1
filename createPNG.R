##RUN THIS TO REPRODUCE ALL THE PLOTS.
##Load dplyr for easier data manipulation...
library(dplyr)
##Load the dataset...
#data <- read.table("../data/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE, header=TRUE)
##Filter the dates we care about...
subdata <- filter(data, Date== "1/2/2007" | Date== "2/2/2007")

##Params to set output dimensions for png files...
w=1000
h=800

##Pass the filtered dataset to each function to produce the plots...
plot1(subdata)
dev.copy(png, file = "figure/plot1.png", width=w, height=h)
dev.off()

plot2(subdata)
dev.copy(png, file = "figure/plot2.png", width=w, height=h)
dev.off()

plot3(subdata)
dev.copy(png, file = "figure/plot3.png", width=w, height=h)
dev.off()

plot4(subdata)
dev.copy(png, file = "figure/plot4.png", width=w, height=h)
dev.off()