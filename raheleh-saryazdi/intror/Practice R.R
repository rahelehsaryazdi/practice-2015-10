#package data.table is good to handle large datasets
#classes of objects character, numeric, integer, complex
#for integer you have to put L at the end to make it integer 
cat <- c("cat")
alpha <- 1
int <- 3L
t.true <- TRUE # Logical vector
#R has 5 different types of objects: vectors, lists, matrices, factors, dataframes
#sometimes you need to make empty vecto so you use a vector function
x <- vector ("numeric", length = 10)
#lists are special vectors, elements are separated by [ ]
#matrices are vectors with a dimension attribute. The dim attribute is an integer vector of lenght=2
x <- 1:10
dim(x) <-c(2,5)
#we could put it all in one line
y <-matrix(1:10, nrow=2, ncol=5)
#third way to make it
x <- 1:3
y <- 10:12
cbind (x, y)
rbind (y, x)
x <-factor (c("yes", "yes", "no", "no", "yes"))
table (x)
unclass (x) #turns it in numeric
num <- c(1,1,2,2,3)
fact <- factor(num, level=c(1,2,3), labels=c("yes", "no", "maybe"), ordered=TRUE)
x <- data.frame (foo =1:4, bar=c(T,T,F,F))
nrow (x)
x <- 1:3
names (x)
names (x) <-c("alpha", "beta", "gamma")
str(x)
#Start coding
getwd()
dir()
airQuality <- read.csv (file.choose(), header=TRUE)
head(airQuality) #shows first six
head(airQuality, n=8) #look at first 8 rows
tail(aiQuality, n=5) #look at the last
nrow(airQuality) #will tell us how many rows we have
str(airQuality)
summary (airQuality)
mean(airQuality$Ozone) #would give NA because of null variable
mean(airQuality$Ozone, na.rm=TRUE)