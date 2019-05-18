plot1<-function(mydata = get_data())
{
  png('plot1.png')
  par(mfrow = c(1,1),mgp = c(2,0,0),mar = c(2,2,0,0),cex.lab = 1,cex.axis = 0.5)
  hist(mydata$Global_active_power,xlab = 'Global Active Power(kilowatts)',main = 'Global Active Power',col = 'red')
  dev.off()
}  