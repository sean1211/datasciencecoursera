corr <- function(directory, threshold = 0) {
  x = complete(directory)
  id = x[x["nobs"] > threshold, ]$id
  corr_var = numeric()
  for (i in id) {
    
    newRead = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                             ".csv", sep = ""))
    xvar = newRead[complete.cases(newRead), ]
    corr_var = c(corr_var, cor(xvar$sulfate, xvar$nitrate))
  }
  return(corr_var)
}
