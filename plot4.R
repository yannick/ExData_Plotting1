file = "../household_power_consumption.txt"
DF = read.table(file, header=TRUE, sep=";", na='?', colClasses = c("character", "character", rep("numeric",7)))
sub = subset(DF, Date == "1/2/2007" | Date == "2/2/2007" )

png(file = "plot4.png", width = 480, height = 480);
par(mfrow = c(2, 2));

plot(date, sub$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l");

plot(date, sub$Voltage, xlab = "datetime", ylab = "Voltage", type = "l");

legend_headings <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3");
legend_colours <- c("black", "red", "blue");

plot(date, sub$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l");

lines(date, sub$Sub_metering_2, col = "red");
lines(date, sub$Sub_metering_3, col = "blue");

legend("topright", legend_headings, lty = c(1, 1, 1), col = legend_colours, bty = "n");

plot(date, sub$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l");

dev.off()
