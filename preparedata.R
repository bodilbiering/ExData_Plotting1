#download and unzip data
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(fileUrl, destfile = "./data/PowerConsumption", method = "curl")
dateDownloaded <- date()
unzip("./data/PowerConsumption", exdir="./data")

data = read.csv("./data/household_power_consumption.txt", sep = ";", stringsAsFactors=FALSE)

#we only work with dates 1/1/2007 and 1/2 2007
library(lubridate)

subdata <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007" ,]
dt <- paste(subdata$Date, subdata$Time)
subdata$DateTime <- dmy_hms(dt)