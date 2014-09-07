#Read the data
Source('ReadData.R')

#Create and Open PNG File
png(filename='plot1.png', width = 480, height = 480, units = "px")

# Make plot
hist(data$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

# Close the PNG
dev.off()
