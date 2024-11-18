#Control Charts 
#Prepare X chart of given data
#Ques1 :
MN<- c(10.1,10.7,9.7,10.5,10.0,8.5,9.3,8.5,9.5,9.1)
RG<- c(7,5,9,4,7,4,8,7,9,5)
n<- 6
M<- mean(MN)
M
R<- mean(RG);R
R
A2<- 0.483
UCLx <- M+A2*R
UClx
LCLx <- M-A2*R
LCLx
CLx<- M
CLx

cat(UCLx,CLx,LCLx,"/n")

plot(x=1:10,y=MN,type="o",pch=18,cex=2,ylim=c(5,14),
col="red",main="X-Chart",xlab="Number of sample",
ylab="Mean of Samples")

abline(h=c(UCLx,CLx,LCLx),lty=c(2,1,2),col=c(2,6,2),
lwd=rep(2,3))

axis(side=4, at=c(UCLx, CLx, LCLx), labels=c("UCL=12.7295", 
"CL=9.59", "LCL=6.4505"))

library(graphics)


#Ques 2 :

n<-4
discs <- read.table("file.txt",header=FALSE)
discs
SampM <- apply(discs,1,mean);SampM

SampR<-c()
for (i in 1:nrow(discs)){
SampR[i]<-max(discs[i,])-min(discs[i,])
}
SampR

M<-mean(SampM);M
R<-mean(SampR);R

A2 <- 0.729

UCLx2 <- M+A2*R ; UCLx2

LCLx2 <- M-A2*R ; LCLx2

CLx2<- M ; CLx2

plot(x=1:24,y=SampM ,col="red",
main="X-Chart for Disc Thickness",
xlab="Number of Samples",
ylab="Mean of Sample",
type="o",
ylim=c(17,47)
)
abline(h=c(UCLx2,LCLx2,CLx2),
lty=c(2,2,1),
lwd=c(1,1,2),
col=c(1,1,2)
)
axis(side =4,at=c(UCLx2,CLx2,LCLx2),
labels=c("UCL=46.98967","CL=32.16667","LCL= 17.34367")
)

# Using qcc 
library(qcc)
qcc(discs,type="xbar",xlab="Sample Number",
ylab="Mean",title="Xbar-Chart")
qcc(discs,type="xbar",xlab="Sample Number",
ylab="Mean",title="Xbar-Chart",plot=FALSE)$limits

# Prepare R Chart


























