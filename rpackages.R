source("https://bioconductor.org/biocLite.R")
biocLite()
biocLite(c("bsseq","data.table","GenomicRanges","methylKit","readr","sqldf","stringr"))
install.packages(c("tidyverse","ggplot2","Hmisc","plotrix","png"),repo=paste0("https://mran.microsoft.com/snapshot/",format(Sys.Date(), format="%Y-%m-%d")))
