masa <- c(82.5, 65.1, 90.5, 80.9, 74, 74.4, 73.5, 75.6, 70.1, 61.8, 80.6, 82.2, 54.1, 60)
wysokosc <- c(181, 169, 178, 189, 178, 175, 173, 187, 175, 165, 185, 178, 162, 185)
medic <-data.frame(masa, wysokosc)

bmi <- round(masa/(wysokosc/100)^2, dig=4)
medic <- cbind(medic, bmi)
names(medic) <- c("Masa", "Wysokosc", "BMI")

waga <-(ifelse(
              medic$BMI < 18.5,
              1,
              ifelse(
                medic$BMI > 24.99,
                3,
                2)
              )
        )

waga <- factor(waga, levels=c(1:3),
               labels=c("niedowaga", "prawidlowa", "nadwaga"))

medic <- cbind(medic, bmi)
names(medic) <- c("Masa", "Wysokosc", "BMI", "Waga")
medic

medic$Masa
medic[1]
medic["Masa"]
medic[, "Masa"]
medic[[1]]


