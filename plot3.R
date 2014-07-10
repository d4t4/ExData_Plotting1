load_data <- read.table(file = "household_power_consumption.txt",
			sep = ";",
			skip = 66637,
			nrows = 2880,
			na.strings= "?")

dataNames <- colnames(read.table("household_power_consumption.txt", 
			sep = ";",
			nrow = 1,
			header = TRUE))

names(load_data) <- dataNames
str(load_data)

dateTime <- paste(load_data$Date, load_data$Time)
weekDay <- strptime(dateTime, format ='%d/%m/%Y %H:%M:%S')
str(weekDay)

png("plot3.png", width=480, height=480)
plot(weekDay, load_data$Sub_metering_1,
	type="l",
	xlab="",
	ylab="Energy sub metering")

lines(weekDay, load_data$Sub_metering_2, col="red")
lines(weekDay, load_data$Sub_metering_3, col="blue")
legend("topright",
	lty=1,
	col=c("black","red","blue"),
	legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
