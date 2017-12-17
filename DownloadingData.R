DataUrl<- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
!file.exists("./Data") {dir.create(./Data)}
download.file(DataUrl,"./Data/Data.zip")
unzip("./Data/Data.zip")

df<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "NA", stringsAsFactors=FALSE)
df2<-df[df$Date %in% c("1/2/2007","2/2/2007"),]

class(df2$Global_active_power) <- "numeric"


