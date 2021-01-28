gdppc <- read.csv(file ="/Users/johannes/Desktop/Minerva/SS144/GDPppp.csv", sep = ",", header = TRUE)

row.names(gdppc) <- gdppc[,1]
timeline <- c(1990:2017)
bounds <- c(0,10000)
par(family = "Times New Roman")
# plot(timeline,gdppc["L income",35:62] , col = "red", ylim = bounds, ylab = "GDP at Purchasing Power Parity ($)", xlab = "Time Years",xaxt='n')
# lines(timeline, gdppc["Low income",35:62], col = "red")
# par(new = T)
plot(timeline,gdppc["India",35:62] , ylim = bounds, ylab = "GDP per Capita at Purchasing Power Parity ($)", xlab = "Time (Years)", xaxt='n')
lines(timeline, gdppc["India",35:62])
axis(side = 1,at = timeline)
text(2017-.1, 7500,labels =  toString(round(gdppc["India","X2017"])), font = 3 )
#text(2017-.14,50638.89 + 1200,labels =  toString(round(50638.89)), font = 3)

grid(nx = NULL, ny = NULL , col = "lightgray", lty = "dotted",
     lwd = par("lwd"), equilogs = TRUE)
legend("bottomright", legend = c("India"), lty = 1, col = c("black"))

gdpus <- unlist(gdppc["United States",35:62], use.names = F)
gdpger <- unlist(gdppc["Germany", 35:62], use.names = F)


##Regression of Gini~GDP

usginia <- usgini[-29]
gerginia <- usgini[-29]

summary(lm(usginia ~ gdpus))
summary(lm(gerginia ~gdpger))
        