BiocManager::install("GEOquery")
library(GEOquery)
gse <- getGEO(filename="~/Downloads/GSE110548_series_matrix.txt.gz")
x <- gse@phenoData@data
xdata <- exprs(gse)
ydata <- pData(phenoData(gse))

BiocManager::install("affyio")
library(affyio)
a <- read.celfile("~/Downloads/GSM2997633_H330_HuEx-1_0-st-v2_.CEL")

help(affyio)
