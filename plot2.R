#setwd("/home/shailja/courses/exploratory data analysis/ExData_Plotting1")
data <- read.table("./Data/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot2.png", width=480, height=480)
subset$DateTime <- strptime(paste(subset$Date, subset$Time), "%d/%m/%Y %H:%M:%S")
plot(subset$DateTime,subset$Global_active_power,xlab="",ylab="Gloabl Active Power (kilowatts)",type="l")
dev.off()