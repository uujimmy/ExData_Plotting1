df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, dec=".")
sub_df <- df[df$Date %in% c("1/2/2007","2/2/2007"),]
sub_df$datetime = strptime(paste(sub_df$Date, sub_df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(sub_df$datetime, as.numeric(sub_df$Sub_metering_1), type="l", xlab="", ylab="Energy Submetering")
lines(sub_df$datetime, as.numeric(sub_df$Sub_metering_2), type="l", col="red")
lines(sub_df$datetime, as.numeric(sub_df$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1, lwd=2)
dev.off()

