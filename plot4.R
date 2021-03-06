setwd("C:/Users/Kanupriya/Desktop/Directory")
data <- read.table("C:/Users/Kanupriya/Desktop/Directory/household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
HH <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
gap<- as.numeric(HH$Global_active_power)
grp <- as.numeric(HH$Global_reactive_power)
sm1 <- as.numeric(HH$Sub_metering_1)
sm2 <- as.numeric(HH$Sub_metering_2)
sm3 <- as.numeric(HH$Sub_metering_3)
voltage <- as.numeric(HH$Voltage)
dt <- strptime(paste(HH$Date,HH$Time,sep= " "),"%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(dt, gap, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(dt, voltage, type="l", xlab="datetime", ylab="Voltage")
plot(dt,sm1,type= "l", xlab=" ",ylab ="Energy Submetering")
lines(dt,sm2,type="l",col= "red")
lines(dt,sm3,type="l",col= "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= 1, lwd=2, col=c("black", "red", "blue"),bty="o")
plot(dt, grp, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()