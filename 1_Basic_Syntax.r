#CTRL + L clears the screen

########################################################################
#Display the workspace (collection of objects currently stored)
########################################################################
objects()
ls()
ls.str()
ls(all.names=TRUE) #to also list variables with names starting with a dot

########################################################################
#Remove objects
########################################################################
rm(x, y, z, ink, junk, temp, foo, bar)
rm(list=ls())

########################################################################
#Getting help on a function
########################################################################
help(max) or ?mean
args(max)
example(max)

########################################################################
#Print result of a function
########################################################################
print(sqrt(2))
	# print - only prints one object at a time
	# print(2,2.3) - only prints 2
	# cat(2,2.3) can be used to print multiple items at a time
	# cat cannot print compound data structures (matrices, lists etc)

########################################################################
#Variables
########################################################################
x <- 3	#Local variable
x <<- 3	#Global variable

########################################################################
#Vectors
########################################################################
vectTemp <- c(1,2,3,4,5,6,8)

########################################################################
#Descriptive statistics
########################################################################
Light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)

mean(x)		the arithmetic mean of the data in x
exp(mean(log(x)))	the geometric mean of x
1/mean(1/x)		the harmonic mean of x
median(x)		the median of x
min(x), max(x)	the minimum and maximum, respectively, of x
range(x)		the range of x
sd(x)			the standard deviation of x
var(x)		the variance of x
quantile(x, p)	the p-th quantiles of x
ecdf(x)		the empirical cumulative distribution function of x
cor(x,y)		the correlation between 2 vectors
cov(x,y)		the covariance between 2 vectors

########################################################################
#Linear regression
########################################################################
temp <- lm(rmax~Light)

#rmax - the response variable
#Light - the predictor

#To get a summary of the results
summary(temp)

plot(Light,rmax)
abline(temp)
#abline is a general-purpose function for adding lines to a plot. You can specify horizontal or vertical lines, a slope and an intercept, or a regression model: ?abline.]
#here it adds a regression line to the plot of the data


########################################################################
#Graphs
########################################################################
hist(rmax)
plot(Light,rmax)





