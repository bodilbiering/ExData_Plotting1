source("preparedata.R")

#hist requires numeric values
subdata$Global_active_power <- as.numeric(subdata$Global_active_power)

#plot 1
png(file = "plot1.png")
hist(subdata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

