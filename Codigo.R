x <- 1500
x+50
w <- "esto no está completo
r <- 1:50
msg
#con la funcion c
x1 <- c(0,5,0,6)
x2 <- c(TRUE,FALSE)
X3 <- c(T,F)
x4<- c("a","b","c")
x5<- c(9:29)
x6<- c(2+1i, 3-5i, 14+1.86i)
y1<- c(1.7,"a")
y2<- c(TRUE, 2)
y3<- c("a",TRUE)
l<- c(0:6) 
class(l)
as.numeric(l)
as.logical(l)
as.character(l)
a<- c("a","b", "c")
as.numeric(a)
as.logical(a)
as.complex(a)
b<- c(3.14,3.99,9,9)
as.integer(b)


x<- 1:3
y<- 10:12
cbind(x,y)
rbind(x,y)

h<-factor(c("yes","yes","no","yes","no"))
table(h)

p <- c(1,2,NA,10,3)
is.na(p)
is.nan(p)