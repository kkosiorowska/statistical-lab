# jak narysowac wykresy kilku funkcji gestosci
par(mar = c(4, 4, .1, .1), cex.lab = .95, cex.axis = .9, mgp = c(2, .7, 0), tcl = -.3)
x <- seq(-4, 9, by=0.01) #przedzial: jakie wartosci przyjmuje x
plot(x, dnorm(x), type="l", lwd=2, ylab="f(x)") # "l" - linia, 2 - grubosc lini

# N(0, 1) - wariancja = 1, odchylenie standardowe = 1^(1/2) = 1
# N(0, 4) - wariancja = 2^2, odchylenie standardowe = 4^(1/2) = 2

# Rozklad normalny: mean - ´srednia, sd - odchylenie standardowe; s ??a warto´sci domy´slne
# pnorm - dystrybuanta
# dnorm - gestosc
# dnorm(x, mean = 0, sd = 1)

lines(x, dnorm(x, 0, 1), lwd=2, col="red2") # "red2" - kolor
lines(x, dnorm(x, 0, 2), lwd=2, col="blue") #"blue" - kolor

# Pr(X > 0)
1 - pnorm(0,0,1)

# Pr(Y >= 0)
1 - pnorm(0,0,2)

# Pr(X >= 2) ... Pr(X < -2)
pnorm(-2,0,1)

# Pr(0 < Y <= 3) ... Pr(2 < Y <=5)
pnorm(3,0,2) - pnorm(0,0,2)
pnorm(5,0,2) - pnorm(2,0,2)

# Pr(-1 < X <= 1) ... Pr(0 < X <=2)
pnorm(1,0,1) - pnorm(-1,0,1)
pnorm(2,0,1) - pnorm(0,0,1) 

# Pr(0 < Y <= 2) ... Pr(0 < X <=2)
pnorm(2,0,2) - pnorm(0,0,2)
pnorm(2,0,1) - pnorm(0,0,1)
