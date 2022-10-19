# Zadania oparte są na zbiorze danych Auto. Należy napisać skrypt w R, który znajduje następujące informacje.

# zad. 1 Jakie jest średnie zużycie paliwa (mpg) wszystkich samochodów?
mean(Auto$mpg)

# zad. 2 Jakie jest średnie zużycie paliwa samochodów, które mają 4 cylindry?
mean(Auto$mpg[Auto$cylinders == 4])
  
# zad. 3  Jaka jest mediana wagi (weight) wszystkich samochodów?
median(Auto$weight)
  
# zad. 4  Jakie jest średnie zużycie paliwa samochodów wyprodukowanych w roku 72?
mean(Auto$mpg[Auto$year == 72])
  
# zad. 5  Jaka jest wariancja przyspieszenia (acceleration) wszystkich samochodów?
var(Auto$acceleration)
  
# zad. 6  Jaka jest wariancja przyspieszenia samochodów japońskich (origin == 3)?
var(Auto$acceleration[Auto$origin == 3])
  
# zad. 7  Ile jest samochodów, których moc (horsepower) jest powyżej średniej?
sum(Auto$horsepower>mean(Auto$horsepower))

# zad. 8  Jaka jest maksymalna moc samochodów, których waga jest poniżej średniej?
max(Auto$horsepower[Auto$weight<mean(Auto$weight)])
  
# zad. 9  Ile jest samochodów, których zużycie paliwa jest poniżej średniej (czyli mpg jest powyżej średniej)?
sum(Auto$mpg > mean(Auto$mpg))  

# zad. 10  Jaka jest minimalna liczba cylindrów samochodów, których zużycie paliwa jest poniżej średniej?
min(Auto$cylinders[Auto$mpg > mean(Auto$mpg)])
  
# zad. 11  Ile jest samochodów o maksymalnej pojemności silnika (displacement)?
sum(Auto$displacement == max(Auto$displacement))
  
# zad. 12  Jaka jest maksymalna waga (weight) samochodów, których pojemność silnika jest mniejsza od jej mediany?
max(Auto$weight[Auto$displacement < median(Auto$displacement)])
