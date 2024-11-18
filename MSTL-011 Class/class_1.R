#BASIC SYNTAX AND ARITHMETIC
log(8,2)
x=10
y<- "Hello,R!"
z=5
x+z


#BASIC VECTOR
v = c(1,2,3,4,5,6)
v[5]
a = 3:10
a
2>4
x3 = c(FALSE, TRUE ,FALSE , TRUE, TRUE)
class(x3)
x4 = c("RAMESH","PAWAN","PAKANJ")
class(x4)
class(v)
x5 = c(2+3i , 3+22i)
class(x5)
x6 = c(2L , 3L,5L, 10L)
class(x6)

#BASIC BULIT-IN FUNCTION
?c()
?seq()
# this ?__ will open the help documentation of given func
#sequence(from,to,step)
seq(5,11,2)
seq(5,20,4)
seq()
x7 = 1:1000
x7
#quantile will dirtibute of set into prob = seq(0,1,0,25) quantile
?quantile()
quantile(x7)
quantile(x7,prob = seq(0,1,0.10))
quantile(x7,prob = seq(0,1,0.13))
quantile(x7,prob = seq(0,1,0.01))

#repeat function
?rep()
rep(5,3)
rep(9,67)
rep(c(5L,"RAMESH"),times = c(3,6))

#sample function
?sample()
sample(c(0,1),size =10, replace = TRUE, prob=c(0.7,0.3))
sample(c(0,1),size =10, replace = FALSE, prob=c(0.7,0.3)) # WILL GIVE ERROR 
set.seed(2003)