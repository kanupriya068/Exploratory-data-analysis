setwd("C:/Users/Kanupriya/Desktop/Directory")
data <- read.table("C:/Users/Kanupriya/Desktop/Directory/household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
HH <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
gap<- as.numeric(HH$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dt, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()