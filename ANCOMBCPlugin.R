library(ANCOMBC)
library(microbiome)
dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
source("RPluMA.R")

input <- function(inputfile) {
  pfix = prefix()
  parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
   # Need to get the three files
   otu.path <<- paste(pfix, parameters["otufile", 2], sep="/")
   tree.path <<- paste(pfix, parameters["tree", 2], sep="/")
   map.path <<- paste(pfix, parameters["mapping", 2], sep="/")
   column <<- parameters["column", 2]
   #measure <<- "Simpson"
   #HMP <<- import_qiime(otu.path, map.path, tree.path, parseFunction = parse_taxonomy_qiime)
x <<- read_phyloseq(otu.file = otu.path,
                  taxonomy.file = tree.path,
                  metadata.file = map.path,
                  sep = ",")
}

run <- function() {
y <<- ancombc(x, formula=column, group=column)
}

output <- function(outputfile) {
   write.table(y$res$diff_abn, outputfile, sep=',')
}
