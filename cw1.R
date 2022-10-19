#Zadania oparte są na zbiorze danych precip z biblioteki standardowej R (?precip). Znajdź następujące informacje.

# zad. 1 Jaka jest średnia i mediana opadów w rejestrowanych miastach?
c(mean(precip), median(precip))

# zad. 2 Jaka jest wariancja i odchylenie standardowe opadów?
c(var(precip), sd(precip))

# zad. 3 Jaki jest rozstęp opadów? [Uwaga: standardowa funkcja range() nie liczy wprost rozstępu tylko wektor dwuelementowy zawierający minimum i maksimum].
diff(range(precip))

# zad. 4 Jaki jest rozstęp międzykwartylowy? Porównaj wynik uzyskany przy pomocy funkcji IQR() (?IQR) z wynikiem uzyskanym (jak na wykładzie) przy pomocy funkcji fivenum() (?fivenum).
iqr <- function(x) unname(diff(fivenum(x)[c(2,4)]))
c(iqr(precip), IQR(precip))
                                                
# zad. 5 Jakie jest odchylenie przeciętne od średniej? Jakie jest odchylenie przeciętne od mediany?
dev.mean <- function(x) mean(abs(x - mean(x)))
dev.median <- function(x) mean(abs(x - median(x)))
c(dev.mean(precip), dev.median(precip))

# zad. 6 Jaki jest poziom opadów w miastach, których nazwa zaczyna się na “M” (?startsWith)?
m = precip[startsWith(names(precip), "M")]
m

# zad. 7 W których miastach opady są równe średniej?
names(precip[precip == mean(precip)])

# zad. 8 W których miastach opady różnią się od mediany nie więcej niż 0.5 cala?
precip[abs(precip - median(precip))<=0.5]

# zad. 9 W którym mieście opady są najmniejsze, a w którym największe?
paste("Najmniejsze opady są w: ", names(precip[which.min(precip)]))
paste("Największe opady są w: ", names(precip[which.max(precip)]))

# zad. 10 Ile jest miast z opadami powyżej średniej?
sum(precip > mean(precip))
length(precip[precip > mean(precip)])

# zad. 11 W których miastach opady leżą powyżej górnego kwartyla?
names(precip[precip>fivenum(precip)[4]])

# zad. 12 W których miastach opady leżą poniżej dolnego kwartyla?
names(precip[precip<fivenum(precip)[2]])

# zad. 13 Narysuj histogram rozkładu. Jakie wnioski na temat rozkładu można z niego wyciągnąć?
hist(precip)

# zad. 14 Narysuj wykres pudełkowy rozkładu. Jakie z niego płyną wnioski? Które miasta stanowią wartości odstające na wykresie pudełkowym (?boxplot, ?boxplot.stats)?
boxplot(precip)
boxplot.stats(precip)
