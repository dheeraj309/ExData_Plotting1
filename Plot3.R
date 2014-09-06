# Loading the data
Source('ReadData.R')

# Create and load the PNG File
png(filename = "plot3.png", width = 480, height = 480, units = "px")

#Naming the columns
cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

#Plot the Graph
plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

#Coloring the Submetering 2 as red and 3 as blue
lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")

#Add a Legend at the topright
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)

# Turn off the PNG File
dev.off()