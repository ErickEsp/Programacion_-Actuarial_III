mediacontaminante <- function(directorio,contaminante, id= 1:332){
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
        revisado <- rbind(revisado,datos)
    } 
    
if(contaminante=="sulfate"){
    media <- mean(revisado[ , 2],na.rm = T)
}else if(contaminante=="nitrate"){
    media <- mean(revisado[ , 3],na.rm = T)  
}
    print(media)
}
mediacontaminante("C:/Users/GUILLERMO/Desktop/specdata","sulfate", 1:3)
####################^el lugar donde esta su archivo de spectdata


