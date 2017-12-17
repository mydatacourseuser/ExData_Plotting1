df<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "NA", stringsAsFactors=FALSE)
df2<-df[df$Date %in% c("1/2/2007","2/2/2007"),]

class(df2$Global_active_power) <- "numeric"


par(mfrow=c(1,1))
hist(df2$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")

dev.copy(png, file = "Plot1.png", width=480, height=480) 
dev.off()