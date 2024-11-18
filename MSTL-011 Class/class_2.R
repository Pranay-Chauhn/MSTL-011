#Creating matrix
m1<-matrix(data=x8,nrow=4,ncol=5)
m1
m2<-matrix(data=x8,nrow=4,ncol=5,byrow = TRUE)
m2
x9<-6:9
x10<-c(12,18,13,20)
x11<-c(7,10,14,15)
data1<-data.frame(x9,x10,x11)
data1
class(data1)
class(m1)
class(x9)

#Indexing
x11[2:3]
x11[-1]
m1 #indexing in matrix
m1[2,4]
m1[2:3,3:4]
m1[c(2,4),c(2,5)]
head(mtcars,3)
tail(mtcars,3)
?mtcars
data()
mtcars$cyl
mtcars[mtcars$cyl==4,]
mtcars[mtcars$cyl==4,c("wt","mpg")]
mtcars[mtcars$cyl==4,][c("wt","mpg")]

#conditional statements
x13<- c(14,20,30)
x14<- c(12,23,30)
if(x13[1]>x14[1]){
 print("True")}else{print("False")}

x13<- c(14,20,30)
x14<- c(12,23,30)
if(x13[3]>x14[3]){
print("x13 is winner")}else if(x13[3]==x14[3]){
print("Both scored the same")}else{
print("x14 is winner")}

#Function
fn<-function(m=2,n=4){
n^m}
fn(2,5)
fn()

nfill<-function(m,n){
factorial(n)/factorial(n-m)}

nfill(3,5)

nfon2<-function(m,n){
sum<-0
for(i in 0:n-1){
sum<-sum+choose(n,i)*(-1)^i*(n-i)^m
}
print(sum)
}
nfon2(4,3)


n11on<-function(m,n){
factorial(n)
}
n11on(5,5)


x<-seq(-2,2,0.1)
x
fn<-c()
for(i in 1:length(x)){
if(x[i]>=0){
fn[i]<-1}else{fn[i]<-0}
}
fn
plot(x,fn,type="s")
points(0,0,pch=1,ces=2,col="black")
points(0,1,pch=16,ces=2,col="black")


x15<-rnorm(300,mean=5 , sd=2)
x<-seq(-3,13,length.out=300)
plot(x=x,y=x15,xlab="Values of x",
ylab="Values of f[x]"
,main="Scatter Plot")
abline(h=mean(x15),col="red",lwd=3)
abline(v=mean(x),col="blue",lwd=3)

#QUES : plot 2x+3y=8
x<-seq(-5,5,0.1)
y<-8/3-2/3*x
plot(x,y,type="l")
abline(a=8/3,b=-2/3)

#Ques : plot 3*x+4*y+6 3D-plot

x<-seq(-15,15,0.1)
y<-seq(-15,15,0.1)
fx<-function(x,y){3*x+4*y+6}
z<-outer(x,y,fx)
persp(x,y,z,theta=30,phi=10,col="blue")
persp(x,y,z,theta=90,phi=2,col="red")


#gamma function
x<-seq(0.1,6,0.1)
gamma(x)
plot(x,y=gamma(x),type="l")

#integrate
?integrate
#1-dimensional funciton
#Ques: integrate x^3 
int1<-function(x){x^3}
integrate(int1,lower=0,upper=2)$value
#2-dimensional function
int2<-function(y){exp(-y)*sin(y)^4}
integrate(int2,lower=0,upper=Inf)$value

#double_integrate
int3 <- function(z){z[1]^2+2*z[2]}
library(cubature)
hcubature(int3,lowerLimit=c(0,0),upperLimit = c(2,1))$integral

#diffrentiation
fx1<-expression(x^3+2*x^2+7)
fx2<-D(fx1,"x")
x<-4
eval(fx2)












