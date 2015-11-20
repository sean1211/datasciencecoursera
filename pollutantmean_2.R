pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  info = numeric()
  for (i in id) {
    
      data = read.csv(paste(directory, "/", formatC(i, width = 4, flag = "0"), 
                               ".csv", sep = ""))
    info = c(info, data[[pollutant]])
  }
  

  return(mean(info, na.rm = TRUE))
}

