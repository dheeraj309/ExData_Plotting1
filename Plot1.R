png(filename='plot1.png')

# Make plot
hist(data$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

# Close the PNG
dev.off()