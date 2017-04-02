df <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
sub_df <- df[df$Date %in% c("1/2/2007","2/2/2007"),]
#sub_df$datetime = strptime(paste(sub_df$Date, sub_df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot1.png", width=480, height=480)
hist(as.numeric(sub_df$Global_active_power)/1000, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
