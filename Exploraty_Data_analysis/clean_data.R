clean_data<-function(directory='Exploraty_Data_analysis/household_power_consumption.txt'){
  all_data<-read.csv(directory,stringsAsFactors = FALSE,sep = ';',na.strings = '?')
  #find the index of the data during **/2/2007 
  index<-grep('^(1|2){1,1}/2/2007',all_data$Date)
  need_data<-all_data[index,]
  #检查NA
  tr<-sapply(need_data[,3:9],is.na )
  tr<-tr[,1]&tr[,2]&tr[,3]&tr[,4]&tr[,5]&tr[,6]&tr[,7]
  #去除NA
  complete_data<-need_data[!tr,]
  complete_data
}