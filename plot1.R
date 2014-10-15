## for project 1/plot 1, png 1

hPc <- read.table("./household_power_consumption.txt", header = T, sep = ";", na.strings="?")

hPcSub <- hPc[hPc$Date %in% c("1/2/2007", "2/2/2007"),]

gAP <- as.numeric(hPcSub$Global_active_power)

png("plot1.png", width = 480, height = 480)
hist(gAP, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
