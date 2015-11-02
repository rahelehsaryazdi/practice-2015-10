
getwd()

setwd("intror")

dir.create("")

setwd(file.choose())

getwd()
#[1] "/Users/pavithraeaswar/Desktop/practice-2015-10/vijieaswar"
dir.create('intror')
setwd('intror')
getwd()
#[1] "/Users/pavithraeaswar/Desktop/practice-2015-10/vijieaswar/intror"
 
  dir()
#this dir() is the same function as ls
  
#importing data
  airQuality <- read.csv("../../data/airQuality.csv", header=TRUE)
  #the ../../ says that it is going up 2 folders
  
  head(airQuality) #head shows first 6 rows of the dataframe you are working with
  
  head(airQuality, n=8)

  #how many rows your have  
  nrow(airQuality)
  ncol(airQuality)
  
  #what classes did R import as
  str(airQuality)
  
  summary(airQuality)
  
  mean(airQuality$Ozone, na.rm=TRUE) #this removes na
  #mean function does not remove NA- it will warn you
  #you dont want to automatically remove NA
  
  