########################################################################
#Importing data from external files
########################################################################

#CSV
temp001<- read.csv(file = "~/mtcars.csv", header = TRUE, sep = ",")
head(temp001)

#For only one column copy data and then use:
readClipboard()

#Any small data can be imported from clipboard
my_data <- read.table(file = "clipboard",sep = "\t", header=T)	#xlsx (tab delimited)
my_data <- read.table(file = "clipboard",sep = ",", header=T) 	#csv (comma separated)

#Aternatively
	#Install
	install.packages("readxl")
	#Read both xls and xlsx files
	# Loading
	library("readxl")
	#Choose file
	my_data <- read_excel(file.choose())
	# xls files
	my_data <- read_excel("C:/Users/Pavilion/Desktop/temp.xls")
	# xlsx files
	my_data <- read_excel("my_file.xlsx")

read.table	- used for all types of importing formats 
read.csv	- used for comma separated values(,)
#a <- read.csv("C:/Users/Pavilion/Desktop/temp.csv",header=T, stringsAsFactors = FALSE)
read.csv2	- used for semi-colon separated values(;)
read.delim	- used for tab delimited values
read.fwf	- used for fix width format
#read.fwf(file = "~/test002.txt", header = TRUE, widths = c(1,-1,3), sep = "\t")