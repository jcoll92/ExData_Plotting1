# Assuming the 'household_power_consumption.txt' file is in your workig directory, the following steps can be followed to read in the data.

housedata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data <- subset(housedata,Date %in% c("1/2/2007", "2/2/2007"))
data$Global_active_power <- as.numeric(as.character(data$Global_active_power))

# The data.frame titled 'data' dimensions are 2880 observations of 9 variables. 


# Plot1.png is created with the following code:

png(file = "filelocation/plot1.png", width = 480, height = 480)
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")
dev.off()