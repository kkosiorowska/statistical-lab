# 35% wnioskow odrzuconych
# przyjecie lub odrzucenie to zmienna losowa o rozkladzie bernoulliego
# proba to 20 wnioskow

#a narysowac rozklad prawdopodobienstwa
par(mar = c(4, 4, .1, .1), cex.lab = .95, cex.axis = .9, mgp = c(2, .7, 0), tcl = -.3)
x <- seq(-8, 8, by=0.01) #przedzial: jakie wartosci przyjmuje x
plot(x, dnorm(x), type="l", lwd=2, ylab="f(x)") # "l" - linia, 2 - grubosc lini
lines(x, dbinom(1, 20, 0.35), lwd=2, col="red2") # "red2" - kolor

#b prawdopodobienstwo ze 3 wnioski odrzucone
#c prawdopodobienstwo ze 10 wnioskow przyjetych
#d prawdopodobienstwo ze przynajmniej 10 przyjetych