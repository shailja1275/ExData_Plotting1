#setwd("/home/shailja/courses/exploratory data analysis/ExData_Plotting1")
data <- read.table("./Data/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot1.png", width=480, height=480)
hist(as.numeric(subset$Global_active_power), main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency",col="red")
dev.off()