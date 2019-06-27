x<-rnorm(1000,  0,1)
#plot(x)
mu=mean(x)
sig=sd(x)
normal.var<-function(x)((1/(sig*sqrt(2*pi)))*(exp(-1/2*((x-mu)/sig)^2)))
normal.var(x)
plot(normal.var(x))
curve(((1/(sig*sqrt(2*pi)))*(exp(-1/2*((x-mu)/sig)^2))),-5,5)

#Normal Curve in R
x <- seq(-4, 4, length=100)
hx <- dnorm(x)
plot(x,hx, type="l", main="Normal Curve of X")
plot(x, hx, type="l", lty=2, xlab="x value",
     ylab="Density", main="Comparison of t Distributions")
#alternative Normal curve
w<-rnorm(1000) 
hist(w,col="red",freq=F,xlim=c(-5,5))
curve(dnorm,-5,5,add=T,col="blue")