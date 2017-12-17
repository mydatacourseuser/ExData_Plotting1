df<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "NA", stringsAsFactors=FALSE)
df2<-df[df$Date %in% c("1/2/2007","2/2/2007"),]

class(df2$Global_active_power) <- "numeric"


Time<-strptime(paste(df2$Date,df2$Time,sep=" "), "%d/%m/%Y %H:%M:%S")

par(mfrow=c(1,1))
GlobalActivePower<-df2$Global_active_power
plot(Time,GlobalActivePower,xlab = " ",type="l",ylab="Global Active Power (kilowatts)")

dev.copy(png, file = "Plot2.png", width=480, height=480) 
dev.off()