completo <- function(directorio,id= 1:332){
    setwd(directorio)
    datos <- vector("numeric")
    revisado <- vector("numeric")
    for (i in id) {
        if (i < 10) {
            datos <- read.csv(paste("00",i,".csv",sep=""))
        } else if (i >= 10 & i < 100){
            datos <- read.csv(paste("0",i,".csv",sep=""))
        } else {
            datos <- read.csv(paste(i,".csv",sep=""))
        }
    
    completos <- complete.cases(datos)
    revisado <- c(revisado,nrow(datos[completos, ]))
    }
    numeros <- data.frame(id,revisado)
    numeros
}
completo("C:/Users/GUILLERMO/Desktop/specdata",1:3)
####################^el lugar donde esta su archivo de spectdata