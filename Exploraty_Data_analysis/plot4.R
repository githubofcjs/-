plot4<-function(mydata = get_data())
{
  png('plot4.png')
  all_time<-strptime(paste(mydata$Date,mydata$Time)," %d/%m/%Y %H:%M:%S")
  plot(all_time,mydata$Global_active_power,type = 'l',ylab = 'Global Active Power(kilowatts)',xlab = '')
  par(mar = c(2,2,0,0))
  par(mgp = c(0.6,0.1,0),mfrow = c(2,2),cex.lab = 0.7,cex.axis = 0.5)
  #第一张图
  plot(all_time,mydata$Global_active_power,type = 'l',ylab = 'Global Active Power(kilowatts)',xlab = '')
  #第二张图
  plot(all_time,mydata$Voltage,type = 'l',ylab = 'Voltage',xlab = 'date time')
  #第三张图
  plot(all_time,mydata$Sub_metering_1,type = 'l',xlab = '',ylab = 'Energy Sub metering')
  lines(all_time,mydata$Sub_metering_2,type = 'l',col = 'red')
  lines(all_time,mydata$Sub_metering_3,type = 'l',col = 'blue')
  legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),bty = 'n',col = c('black','red','blue'),lty = 1,cex = 0.5)
  #第四张图
  plot(all_time,mydata$Global_reactive_power,type = 'l',ylab = 'Global_rctive_power(kilowatts)',xlab = 'date time')
  dev.off()
}