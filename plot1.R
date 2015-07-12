library(datasets)
full <- read.csv2("household_power_consumption.txt", header = T, sep = ";", na.strings = "?", colClasses=c(rep("character",9)))
needed <- subset(full, Date == "1/2/2007" | Date == "2/2/2007")
needed$datetime <- strptime(paste(needed$Date,needed$Time),"%d/%m/%Y %H:%M:%S")
png("plot1.png",width = 480, height = 480, units = "px")
hist(as.numeric(needed$Global_active_power), main = "Global Active Power", xlab = "Global Activr Power(kilowatts)", ylab = "Frequency", col = "red")
dev.off()

