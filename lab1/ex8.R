# dla rozkladu normalnego i rozkladu t-studenta 0 15 stopniach swobody

# wyznaczyc kwantyle rzedu p = 0.85, p = 0.99, p = 0.27

st = 15

qnorm(0.85) # ok
qnorm(0.99) # ok
qnorm(0.27)

qt(0.85, st)
qt(0.99, st) # ok
qt(0.27, st)

# obliczyc pr Pr(X > 1.8), Pr(X >= 2.47)

1 - pnorm(1.8, 0, 1)
pnorm(-2.47, 0, 1)

1 - pt(1.8, 15)
pt(-2.47, 15)