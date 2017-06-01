rankingcompleto <- function(resultado, num="mejor") {
    datos <- read.csv("outcome-of-care-measures.csv")
    
    if(!((resultado== "ataque")|(resultado=="falla")|(resultado=="neumonia")) ){
        stop("Enfermedad Invalido")
    }
    
    enfermedad <- if (resultado=="ataque"){
        11
    }else if (resultado=="falla"){
        17
    }else{ 
        23
    }
    datos[,enfermedad] <- suppressWarnings(as.numeric(levels(datos[,enfermedad])[datos[,enfermedad]]))
    datos[,2] <- as.character(datos[,2])
    
    estados <- levels(datos$State)
    tabla1 <- vector()
    tabla2 <- vector()
    for(i in 1:length(estados)){
        datosE <- datos[grep(estados[i], datos$State), ]
        ordenarD <- datosE[order(datosE[, enfermedad], datosE[, 2], na.last = NA), ]
        reshospital <- if(num == "mejor"){
            ordenarD[1, 2]
        }else if(num == "peor"){
            ordenarD[nrow(ordenarD),2]
        }else{
            ordenarD[num,2]
        }
        tabla1 <- c(tabla1,c(reshospital))
        tabla2 <- c(tabla2,c(estados[i]))
    }
    resultados <- data.frame(tabla1,tabla2 )
    row.names(resultados) <- estados
    colnames(resultados) <- c("hospital", "estado")
    resultados
}
 tail(rankingcompleto("falla"),10)   
     datosE <- datos[grep(estados[46], datos$State), ]
     ordenarD <- datosE[order(datosE[, 11], datosE[, 2], na.last = NA), ]

     estados
 datosE[,2]
 ordenarD[,2]
 