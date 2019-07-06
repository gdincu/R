########################################################################
#Install new packages
########################################################################
install.packages("ggplot2")
install.packages(c("plyr","reshape2"))

#When not connected to the Internet, download the packages
install.packages("ggplot2",repos=NULL)

#No permission to install packages in R ’s central directory
#R asks whether you want to install the packages in a user-specific directory
#Standard warning message:
	#Warning message: In file.create(f.tg) :
	#cannot create file '.../packages.html', reason 'Permission denied'.
#The package has been installed successfully, but the main help system index files couldn’t be updated because of file permissions problems.