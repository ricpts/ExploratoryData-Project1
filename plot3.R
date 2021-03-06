## for project 1/plot 3, png 3

hPc <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";", na.string = "?", dec = ".")

hPcSub <- hPc[hPc$Date %in% c("1/2/2007", "2/2/2007"),]
datetime <- strptime(paste(hPcSub$Date, hPcSub$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
gAP <- as.numeric(hPcSub$Global_active_power)
subMetering1 <-as.numeric(hPcSub$Sub_metering_1)
subMetering2 <-as.numeric(hPcSub$Sub_metering_2)
subMetering3 <-as.numeric(hPcSub$Sub_metering_3)
plot(datetime, subMetering1, xlab = "", ylab = "Energy Submetering", type = "l")
lines(datetime, subMetering2, type = "l", col = "red")
lines(datetime, subMetering3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
png("plot3.png", width = 480, height = 480)
dev.off()
