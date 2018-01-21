pollutantmean <- function (directory, pullutant, id = 1:332) { 
                        valuevector <- c() 
                        filenames <- list.files(directory)
                        
                        for (i in id) { 
                                
                                file <- paste(directory, "/", filenames[i], sep = "")
                                file1 <- read.csv(file)
                                valuevector <- append(valuevector, na.omit(file1[[pullutant]]))
                                meanvector <- mean(valuevector, na.rm =TRUE)
                                }
        meanvector
        
        
        }