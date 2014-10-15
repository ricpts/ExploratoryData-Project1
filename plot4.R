## for project 1/plot 4, png 4

hPc <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";", na.string = "?", dec = ".")

hPcSub <- hPc[hPc$Date %in% c("1/2/2007", "2/2/2007"),]
datetime <- strptime(paste(hPcSub$Date, hPcSub$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
gAP <- as.numeric(hPcSub$Global_active_power)
gRP <- as.numeric(hPcSub$Global_reactive_power)
voltage <- as.numeric(hPcSub$Voltage)
subMetering1 <-as.numeric(hPcSub$Sub_metering_1)
subMetering2 <-as.numeric(hPcSub$Sub_metering_2)
subMetering3 <-as.numeric(hPcSub$Sub_metering_3)

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

plot(datetime, gAP, xlab = "", ylab = "Global Active Power", type = "l", cex = 0.2)
plot(datetime, voltage, ylab = "Voltage", xlab = "datetime", type = "l")
plot(datetime, subMetering1, ylab = "Energy Submetering", xlab = "", type = "l")

lines(datetime, subMetering2, type = "l", col = "red")
lines(datetime, subMetering3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =, lwd = 2.5, col = c("black", "red", "blue"))

plot(datetime, gRP, ylab = "Global Reactive Power", xlab = "datetime", type = "l")

dev.off()
