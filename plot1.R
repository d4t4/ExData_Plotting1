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
png("plot1.png", width=480, height=480)

hist(load_data$Global_active_power,
	col="red", 
	main ="Global Active Power",
	xlab="Global Active Power (kilowatts)")

dev.off()
