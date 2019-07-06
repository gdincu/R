########################################################################
#Using igraph
########################################################################
install.packages("igraph")
library(igraph)
d = data.frame(
  offspring = c("G2I1", "G2I2", "G2I3", "G3I1", "G3I2", "G3I3", "G3I4", "G4I1", "G4I2", "G4I3", "G4I4", "G5I1", "G5I2", "G5I3"  ),
  parent1   = c("G1I1", "G1I2", "G1I1", "G2I1", "G2I3", "G2I1", "G2I3", "G3I2", "G3I2", "G3I1", "G3I4", "G4I3", "G4I3", "G4I1" ),
  parent2   = c("G1I3", "G1I2", "G1I2", "G2I2", "G2I2", "G2I2", "G2I3", "G3I4", "G3I1", "G3I2", "G3I4", "G4I1", "G4I1", "G4I2" ),
  stringsAsFactors = F
)

d2 = data.frame(from=c(d$parent1,d$parent2), to=rep(d$offspring,2))
g=graph_from_data_frame(d2)
#co=layout.reingold.tilford(g, flip.y=T)
co1 <- layout_as_tree(g, root = which(grepl("G1", V(g)$name)))
#plot(g,layout=co, edge.arrow.size=0.5)
plot(g,layout=co1, edge.arrow.size=0.25)

########################################################################
#Using kinship2
########################################################################
install.packages("kinship2")
library(kinship2)
df <- data.frame(id = c(1,2,3,4,5,6), sex = c(1,2,1,2,2,2), dadid = c(0,0,0,0,1,3), momid = c(0,0,0,0,2,4), famid = 1)
relation1 <- matrix(c(2,3,4,1), nrow = 1)
foo <- pedigree(id = df$id, dadid = df$dadid, momid = df$momid, sex = df$sex, relation = relation1, famid = df$famid)
ped <- foo['1']
plot(ped)