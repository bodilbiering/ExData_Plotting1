source("preparedata.R")

#plot 4
png(file = "plot4.png")
par(mfcol = c(2,2))
plot(subdata$DateTime, subdata$Global_active_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)")

plot(subdata$DateTime, subdata$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(subdata$DateTime, subdata$Sub_metering_2, col="red")
lines(subdata$DateTime, subdata$Sub_metering_3, col="blue")
legend("topright", lwd = 1, col=c("black", "red", "blue"), 
       legend= c("Sub metering 1", "Sub metering 2", "Sub metering 3"), cex = 0.7)

with(subdata, plot(DateTime, Voltage, type="l", xlab="datetime"))
with(subdata, plot(DateTime, Global_reactive_power, type="l", xlab="datetime"))
dev.off()
