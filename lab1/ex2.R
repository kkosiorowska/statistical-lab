set.seed(1313)
cena <- rnorm(100, mean=50, sd=10)
cena <- round(cena, digits=2)
euro = 4.19
cenaEuro <- round(cena/euro, digits=0)

cenaEuroMax <- max(cenaEuro)
cenaEuroMin <- min(cenaEuro) 

print(sort(unique(cenaEuro)))

sumElements  <- sum(cenaEuro)
arithmeticMean <- sumElements / length(cenaEuro)
geometricMean <- prod(cenaEuro)^(1/length(cenaEuro))

greaterThan13 <- length(cenaEuro[cenaEuro > 13])
getween10And15 <- length(cenaEuro[cenaEuro > 10 & cenaEuro < 15])

cenaPLN <- cena
cenaEUR <- cenaEuro

data.frame(cenaPLN, cenaEUR)