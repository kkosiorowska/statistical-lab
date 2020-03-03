r <- 0.05
rr <- 1 + r / 12
K <- 300000
L <- 20
N <- 12*L
n <- 1:N
rataKredytu <- K * rr ^ N * (rr - 1) / (rr ^ N - 1)
zadluzenie <- K * (rr ^ N - rr ^ n) / (rr ^ N - 1)
odsetki <- K * (rr ^ N  - rr ^ ( n - 1)) / (rr ^ N - 1) * (rr - 1)
rataKapitalu <- rataKredytu - odsetki
kredyt <- cbind(rataKapitalu, odsetki, rataKredytu, zadluzenie) # laczy kolumnowo dwie macierze

class(kredyt)

head(kredyt, 10)
tail(kredyt, 10)

dim(kredyt)

print("Wiersze od 100 do 125")
print(kredyt[100:125,])

print("Pierwsze 20 wierszow")
print(head(kredyt, 20))

print("Ostatnie 30 wierszów")
print(tail(kredyt, 30))

print("Wiersze od 20 do 30 i od 50 do 60")
print(kredyt[c(20:30, 50:60),])

print("Co dziesieta rate")
print(kredyt[seq(10, to=dim(kredyt)[1], by=10),])

ratyKapitaluSum <- sum(kredyt[,1])
odsetkiSum      <- sum(kredyt[,2])
ratyKredytuSum  <- sum(kredyt[,3])

data.frame(ratyKapitaluSum, odsetkiSum, ratyKredytuSum)
Sum <- ratyKapitaluSum + odsetkiSum + ratyKredytuSum

when <- which(rataKapitalu > odsetki)[1]
