# Loading the data
Source('ReadData.R')

png(filename = "plot2.png", width = 480, height = 480, units = "px")

# Make plot
plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Turn off the PNG File
dev.off()