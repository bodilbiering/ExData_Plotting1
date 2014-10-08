source("preparedata.R")

#Plot 2

png(file = "plot2.png")
plot(subdata$DateTime, subdata$Global_active_power, type = "l", ylab="Global Active Power (kilowatts)", xlab = "")
dev.off()





