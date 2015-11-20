pollutantmean <- function(directory, pollutant = "sulfate", id = 1:332) {
  if(grep("specdata", directory) == 1) {
    directory <- ("./specdata/")
  }
  meanV <- c()
  files <- as.character( list.files(directory) )
  path <- paste(directory, files, sep="")
  for(i in id) {
    currfile <- read.csv(path[i], header=T, sep=",")
    head(currfile)
    pollutant
    na_removed <- currfile[!is.na(currfile[, pollutant]), pollutant]
    meanV <- c(meanV, na_removed)
  }
  result <- mean(meanV)
  return(round(result, 3)) 
}



