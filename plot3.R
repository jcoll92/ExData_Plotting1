# Assuming the 'household_power_consumption.txt' file is in your workig directory, the following steps can be followed to read in the data.

readnames <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", nrows = 6)

householddata <- read.table("household_power_consumption.txt", header=TRUE,sep=";", skip=66630, 
                            nrows=2900, col.names=names(readnames), na.strings=c("?"),
                            colClasses=c("character", "character","numeric","numeric","numeric","numeric",
                                         "numeric","numeric","numeric"))

householddata$Date<-as.Date(householddata$Date, format = "%d/%m/%Y")
householddata$Time<-strptime(paste(householddata$Date,householddata$Time),"%F %T")

hhdata <- subset(householddata,householddata$Date %in% as.Date(c("2007-02-01", "2007-02-02")))

# The data.frame titled 'hhdata' dimensions are 2880 observations of 9 variables. 


# Plot3.png is created with the following code:

png(file = "C:/Users/john.colley/OneDrive - Veritec Pty Ltd/Desktop/ExData_Plotting1/plot3.png", width = 480, height = 480)
plot(hhdata$Time, hhdata$Sub_metering_1, ylab = "Energy sub metering", xlab = "", pch = ".", type = "l", col = "black")
points(hhdata$Time, hhdata$Sub_metering_2, col = "red", type = "l")
points(hhdata$Time, hhdata$Sub_metering_3, col = "blue", type = "l")
legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = names(hhdata[,7:9]))
dev.off()
