corr <- function (directory, threshold = 0) { 
        corrvec <- c() 
        obs <- complete(directory)
        filter_obs <- subset(obs, obs$nobs > threshold)
        filenames <- list.files(directory)
        
        for(i in filter_obs$fileid){
                
                file <- paste(directory, "/", filenames[i], sep="")
                file1 <- read.csv(file)
                file1 <- subset(file1, complete.cases(file1))
                
                corrvec <- c(corrvec, cor(file1$nitrate, file1$sulfate))
                
                
        }
        
        corrvec
        }