setwd("C:/Users/GUILLERMO/Desktop/specdata")
corr <- function(directorio,horizante=0){
    setwd(directorio)
    datos <- numeric()
    revisado <- numeric()
    for (i in 1:332) {
        if (i < 10) {
            datos <- read.csv(paste("00",i,".csv",sep=""))
        } else if (i >= 10 & i < 100){
            datos <- read.csv(paste("0",i,".csv",sep=""))
        } else {
            datos <- read.csv(paste(i,".csv",sep=""))
        }
        
        completos <- complete.cases(datos)
        comp <- datos[completos, ]
        fil <- nrow(datos[completos, ])
        
        if(fil >=horizante){
            corrt <- cor(comp[,2],comp[,3])
            revisado <- c(revisado,corrt)
            
        }
    }
    print(revisado)
}
corr("C:/Users/GUILLERMO/Desktop/specdata",4)
