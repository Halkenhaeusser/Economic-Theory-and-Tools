fdi <- read.csv(file ="/Users/johannes/Desktop/Minerva/SS144/FDI.csv", sep = ",", header = TRUE)

row.names(fdi) <- fdi[,1]
timeline <- c(1990:2017)

par(family = "Times New Roman")
plot(timeline,fdi["Lower middle income",(62-27):62], ylim = c(0, 15*10^10),ylab = "Foreign direct investment, net inflows (BoP, current US$) ($)", xlab = "Time (Years)", xaxt='n')
lines(timeline, fdi["Lower middle income",(62-27):62])
par(new = T)
plot(timeline,fdi["India",(62-27):62] , ylim = c(0, 15*10^10),ylab = "Foreign direct investment, net inflows (BoP, current US$) ($)", xlab = "Time (Years)", xaxt='n')
lines(timeline, fdi["India",(62-27):62], col = "darkgreen")
axis(side = 1,at = timeline)
text(2017-.1,fdi["India",62]-11^9 ,labels =  "3.9e+10", font = 3)


grid(nx = NULL, ny = NULL , col = "lightgray", lty = "dotted",
     lwd = par("lwd"), equilogs = TRUE)
legend("topleft", legend = c("India", "All 49 lower middle income countries"), lty = 1, col = c("darkgreen","black"))


View(fdi)
