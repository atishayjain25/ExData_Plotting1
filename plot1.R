data <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors = FALSE)
neededData <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")
GAP <- as.numeric(neededData$Global_active_power)
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(GAP, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()