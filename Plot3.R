df<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "NA", stringsAsFactors=FALSE)
df2<-df[df$Date %in% c("1/2/2007","2/2/2007"),]



Time<-strptime(paste(df2$Date,df2$Time,sep=" "), "%d/%m/%Y %H:%M:%S")

par(mfrow=c(1,1))

SubMetering1<-as.numeric(df2$Sub_metering_1)
SubMetering2<-as.numeric(df2$Sub_metering_2)
SubMetering3<-as.numeric(df2$Sub_metering_3)


plot(Time,SubMetering1,xlab = " ",type="l",ylab="Energy sub metering")
points(Time,SubMetering2,col="red",type="l")
points(Time,SubMetering3,col="blue",type="l")

legend("topright", lty = 1, col = c("black", "red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


dev.copy(png, file = "Plot3.png", width=480, height=480) 
dev.off()