file = "../household_power_consumption.txt"
DF = read.table(file, header=TRUE, sep=";", na='?', colClasses = c("character", "character", rep("numeric",7)))
sub = subset(DF, Date == "1/2/2007" | Date == "2/2/2007" )

png(file = "plot2.png", width = 480, height = 480);
date <- strptime(paste(sub$Date, sub$Time, sep = " "), "%d/%m/%Y %H:%M:%S");
plot(date, sub$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l");
dev.off()