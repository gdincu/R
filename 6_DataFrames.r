#Import data from a CSV file into a data frame
d <- read.csv(file.choose() , header = T, sep = ",", stringsAsFactors = F)

#Replace values of a column based on their value
d$Grade.Name[d$Grade.Name == "RCS.E"] <- "Exec"
d$Grade.Name[is.na(d$Grade.Name)] <- NA

#Remove values of a column based on their value
d <- d[!(d$Grade.Name == "Exec"),]

#Delete all objects
rm(list=ls())

#Selecting rows or columns
d[[5]]	- Returns one column—specifically, the nth column of dfrm
d[3,]		- Returns the third Row
d[,5] 	- Fifth Column
d[c(8,9)]	- Returns a data frame build from the columns 8 and 9
###To retain the dimensions of the initial data frame use drop=FALSE
eg. mat[1,,drop=FALSE]






