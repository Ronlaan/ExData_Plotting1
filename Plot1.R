# set working directory
setwd("C:/RStudio")
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

# Transform format
data$Date <- as.Date(data$Date, "%d/%m/%Y")

# Filter data set to two days
data <- subset(t,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Create the histogram
png(filename='plot1.png', width=480, height=480, units='px')
hist(data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.off()

