# Salon samochodowy rejestruje dzienn ??a sprzedaz nowego modelu samochodu ?? Shinari. 
# Wyniki obserwacji doprowadzily do wniosku, ze rozklad liczby sprzedanych samochodów
# w ci ??agu dnia mo ?? zna  przyblizy´c rozkladem Poissona: 

# lambda = 5
# ppois(x, lambda)


# a) nie sprzeda ani jednej sztuki;
ppois(0, 5)

# b) sprzeda dokladnie 5 sztuk;
ppois(5, 5)

# c) sprzeda przynajmniej jedn ??a sztuk??e;

# d) sprzeda przynajmniej 2 sztuki ale mniej niz 5; ??

# e) sprzeda 5 sztuk przy zalozeniu, ?? ze sprzedal ju ?? z ponad 3 sztuki.