gdpgrowth <- read.csv("/Users/johannes/Desktop/Minerva/SS144/GDPGrowthData.csv", sep = ",")
row.names(gdpgrowth) <- gdpgrowth[,1]
View(gdpgrowth)


timeline <- c(2000:2017)
par(family = "Times New Roman")
plot(timeline,gdpgrowth["United States", 45:62] , ylim = c(-3,4), ylab = "", xlab = "",xaxt='n', bty = 'n')
lines(timeline, gdpgrowth["United States",45:62], col = "navyblue")
axis(c(1,2), pos = c(0,0), tick = T, at = timeline, labels = timeline)
grid(nx = NULL, ny = NULL , col = "lightgray", lty = "dotted",
     lwd = par("lwd"), equilogs = TRUE)