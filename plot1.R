file = "../household_power_consumption.txt"
#DF = fread(file)
DF = read.table(file, header=TRUE, sep=";", na='?', colClasses = c("character", "character", rep("numeric",7)))
sub = subset(DF, Date == "1/2/2007" | Date == "2/2/2007" )

png(file = "plot1.png", width = 480, height = 480);
hist(sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power");
dev.off()
