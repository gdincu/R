#Import data from CSV file
d <- read.csv(file="C:/Users/Pavilion/Desktop/temp.csv", header=TRUE, sep=",", stringsAsFactors = F)
#Rename headers
names(d)[names(d) == "Mama"] <- "parent1"
names(d)[names(d) == "Tatal"] <- "parent2"
names(d)[names(d) == "Nume.Complet"] <- "offspring"
#Plot data
library(igraph)
d2 = data.frame(from=c(d$parent1,d$parent2), to=rep(d$offspring,2))
g=graph_from_data_frame(d2)

#Ex1
plot(g,layout = layout.fruchterman.reingold, rescale = T,vertex.size=10,edge.arrow.size=0.01,vertex.label.color = "black",vertex.shape = "none")

#Ex2
plot(g,layout=layout.auto,vertex.shape = "rectangle",edge.arrow.size=0.01,rescale=T)

#Ex3

V(g)$label <- V(g)$name
set.seed(42)   ## to make this reproducable
co <- layout.auto(g)
plot(0,type="n", ann=FALSE, axes=FALSE, xlim=extendrange(co[,1]), 
     ylim=extendrange(co[,2]))
plot(g,edge.arrow.size=0.1, layout=co, rescale=F, add=T,
     vertex.shape="rectangle",
     vertex.size=(strwidth(V(g)$label) + strwidth("oo")) * 100,
     vertex.size2=strheight("I") * 2 * 100)

#Remove all objects
rm(list=ls())

#Find the size of the Graph
dev.size()