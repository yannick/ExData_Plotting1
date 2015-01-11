file = "../household_power_consumption.txt"
DF = read.table(file, header=TRUE, sep=";", na='?', colClasses = c("character", "character", rep("numeric",7)))
sub = subset(DF, Date == "1/2/2007" | Date == "2/2/2007" )

png(file = "plot3.png", width = 480, height = 480);

legend_headings <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3");
legend_colours <- c("black", "red", "blue");
plot(date, sub$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l");
lines(date, sub$Sub_metering_2, col = "red");
lines(date, sub$Sub_metering_3, col = "blue");
legend("topright", legend_headings, lty = c(1, 1, 1), col = legend_colours);
dev.off();