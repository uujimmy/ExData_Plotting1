df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, dec=".")
sub_df <- df[df$Date %in% c("1/2/2007","2/2/2007"),]
sub_df$datetime = strptime(paste(sub_df$Date, sub_df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(sub_df$datetime, as.numeric(sub_df$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
