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