mejor <- function(estado, resultado) {
    datos <- read.csv("outcome-of-care-measures.csv")
    estados <- levels(datos$State)
    validez_de_estado <- F
    for(i in 1:length(estados)){
        if (estado == estados[i]){
            validez_de_estado <- T
        }
    }
        if (!validez_de_estado){
            stop("Estado Invalido")
        }
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
    datosE <- datos[grep(estado, datos$State), ]
    ordenarD <- datosE[order(datosE[, enfermedad], datosE[, 2], na.last = NA), ]
    ordenarD[1, 2]
}
mejor("TX","ataque")
