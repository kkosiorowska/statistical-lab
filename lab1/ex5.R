reg <- lm(y ~ x, data = data.frame(y=rnorm(100), x=rnorm(100) ))

# ilosc elementow 
length(reg)

# nazwa elemetow listy
names(reg)

# obliczyc dlugosc wszystkich elemtow listy
sapply(reg, length)

# typ elementow listy
sapply(reg, class)

# wydobadz element listy o nazwie coefficients
reg$coefficients