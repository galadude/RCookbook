## Simulate 10,000 estimates - FRA SLIDES
phat <- rbinom(n=10000,size=500,prob=0.35)/500

## Save directly to pdf
pdf("hist500.pdf") 

## Histogram with custom axes and annotations
hist(phat, col=5, axes=FALSE,
  xlim=c(0,1),ylim=c(0,2000),prob=FALSE,
  xlab = expression(hat(p)), ylab="Frequency",
  main=expression(paste(
  "Distribution of ", hat(p), ", ",n==500,", ",
  pi==0.35,", repetitions=10000")),
  cex.lab=1.5, cex.main=1.5)
box()
axis(2,cex.axis=.5)
axis(1,at=c(0,0.2,0.6,0.8,1),cex.axis=1.5)
abline(v=0.35,lty=2,lwd=2)
text(0.35,-180,expression(pi),cex=2,xpd=NA)
dev.off()
