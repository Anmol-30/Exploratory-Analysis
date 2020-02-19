setwd(".......\exdata_data_household_power_consumption")
File <- "./data/household_power_consumption.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetdata)
datetime <- strptime(paste(subSetdata$Date, subSetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
