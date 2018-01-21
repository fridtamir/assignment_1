complete <- function(directory, id = 1:332){ 
        
        fileid <- c() 
        nobs <- c() 
        filenames <- list.files(directory)
        for(i in id) { 
                file <- paste(directory, "/", filenames[i], sep = "") 
                file1 <- read.csv(file) 
                
                fileid <- append(fileid, i) 
                nobs <- append(nobs, sum(complete.cases(file1)))
                
                
                }
        df <- data.frame(fileid, nobs)
        
        df
}
