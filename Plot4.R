# Loading the data
Source('ReadData.R')

png(filename = "plot4.png", width = 480, height = 480, units = "px")

#Change the Margin so as to accomodate 4 Plots    
par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))

# Make the 4 Plots on a Single Device(File) 
with(data, {plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l")
            plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l")
            
#Next plot would be made using Sub_metering as Columns
cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
            plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
            
            #Coloring Sub_metering_2 as red and 3 as blue  
            lines(DateTime, Sub_metering_2, type="l", col="red")
            lines(DateTime, Sub_metering_3, type="l", col="blue")
            
            #Add a legend at the top left  
            legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols, bty="n")
            
            
            plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")        
})

# Turn off the PNG File    
dev.off()