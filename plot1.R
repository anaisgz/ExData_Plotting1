## Reading the data file downloaded and extracted from 
## Dataset: Electric power consumption 
power_cons <- read.table("ExData_Plotting1/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings="?")
plot_data <- subset(power_cons, power_cons$Date == "1/2/2007" | power_cons$Date == "2/2/2007")

png("Plot1.png", width = 480, height = 480)

hist(plot_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()