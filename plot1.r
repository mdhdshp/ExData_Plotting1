# Plot1

# To unzip the txt file in current directory
unzip("exdata_data_household_power_consumption.zip")

# Reading the txt file into r
epc<-read.table("household_power_consumption.txt",sep=";",header=FALSE,skip=66637,nrows=3000)
 
# naming the columns of the dataframe

colnames(epc)[1]<-"Date"
colnames(epc)[2]<-"Time"
colnames(epc)[3]<-"Global_active_power"
colnames(epc)[4]<-"Global_reactive_power"
colnames(epc)[5]<-"Voltage"
colnames(epc)[6]<-"Global_intensity"
colnames(epc)[7]<-"Sub_metering_1"
colnames(epc)[8]<-"Sub_metering_2"
colnames(epc)[9]<-"Sub_metering_3"


# plotting Histogram for Global Active Power 

hist(epc$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.copy(png,file="plot1.png")
dev.off()
