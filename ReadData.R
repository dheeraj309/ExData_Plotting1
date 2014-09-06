# Reading the Unzipped Text Document from the Working directory

read.table(file = "household_power_consumption.txt",header=T, sep=';', na.strings="?", 
           colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

# Subsetting the Data we need
data<- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")