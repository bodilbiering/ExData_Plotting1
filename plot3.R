source("preparedata.R")

#plot 3
png(file = "plot3.png")
plot(subdata$DateTime, subdata$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(subdata$DateTime, subdata$Sub_metering_2, col="red")
lines(subdata$DateTime, subdata$Sub_metering_3, col="blue")
legend("topright", lwd = 1, col=c("black", "red", "blue"), 
       legend= c("Sub metering 1", "Sub metering 2", "Sub metering 3"), cex = 0.7)
dev.off()

