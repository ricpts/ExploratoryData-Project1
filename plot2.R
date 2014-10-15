## for project 1/plot 2, png 2

hPc <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";", na.string = "?")

hPc$DateTime <- paste(as.character(hPc$Date), as.character(hPc$Time), sep = " ")
hPc$DateTime <- strptime(hPc$DateTime,"%d/%m/%Y %H:%M:%S")

hPc$Date <- as.Date(hPc$Date, "%d/%m/%Y")

hPc <- subset(hPc, Date == "2007-02-01" | Date == "2007-02-02")

plot(hPc$DateTime, hPc$Global_active_power, xlab= " ", ylab = "Global Active Power (kilowatts)", type = "l")

png("plot2.png", width = 480, height = 480)
dev.off()










