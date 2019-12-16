# Assuming the 'household_power_consumption.txt' file is in your workig directory, the following steps can be followed to read in the data.

housedata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data <- subset(housedata,Date %in% c("1/2/2007", "2/2/2007"))

# The data.frame titled 'data' dimensions are 2880 observations of 9 variables. 


# Plot1.png is created with the following code:

hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")
