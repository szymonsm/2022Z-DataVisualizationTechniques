###########################################
###    TECHNIKI WIZUALIZACJI DANYCH     ###
###           LABORATORIUM 1            ###
###########################################

## 0) Prowadzący.
# Hubert Baniecki/Anna Kozak
# Kontakt: MS Teams lub mail
# a.kozak@mini.pw.edu.pl

## 1) Materiały
# Repozytorium na GitHub
# https://github.com/mini-pw/2022Z-DataVisualizationTechniques 

## 2) Jak działa GitHub?
# Jak zgłosić pracę domową/projekt? (fork, commit, pull request)
# https://rogerdudler.github.io/git-guide/

## 3) Podstawy R - rozgrzewka 

data(mtcars)
head(mtcars)

?mtcars


# Jak wybieramy wiersze (obserwacje) oraz kolumny (zmienne)?
mtcars[2:3,4:5]
# Pierwszy wiersz, pierwsza kolumna?
mtcars[1,1]
# 10 pierszych wierszy, 2 i 3 kolumna?
mtcars[1:10,2:3]
head(mtcars[,2:3],10)
# Wszytskie wiersze i kolumny w kolejności "am", "wt", "mpg"?
mtcars[,c("am","wt","mpg")]
# Jak wybierać jedną kolumnę?
mtcars$hp

# Alt + -
# Ctrl + Shift + m %>%

# Pytania

# 1. Wymiar ramki danych
dim(mtcars)

# 2. Jakie są typy zmiennych?
str(mtcars)

# 3. Ile jest unikalnych wartości zmiennej "cyl" i jakie to są wartości?
unique(mtcars$cyl)

# 4. Jaka jest średnia wartość zmiennej "drat" dla samochodów o wartości zmiennej "cyl" równej 4?
mean(mtcars$drat)
mean(mtcars$drat[mtcars$cyl == 4])
mean(mtcars[mtcars$cyl == 4, "drat"])

# Prosty wykres

# Zależność "mpg" i "hp" - scatter plot
plot(mtcars$mpg, mtcars$hp)


# Zmienna "cyl" - barplot
barplot(table(mtcars$cyl))

## 4) Gra proton, należy stworzyć plik R z kodami do rozwiązania gry (do 20 minut).

install.packages("proton")
library(proton)
proton()
data(employees)
head(employees)
employees[employees$surname == "Insecure",]
proton(action = "login", login="johnins")
data(top1000passwords)
top1000passwords
for(i in top1000passwords){
  proton(action = "login", login="johnins", password=i)
}
data(logs)
head(logs)
employees[employees$surname == "Pietraszko",] ## slap
temp = logs[logs$login == "slap",]
temp = data.frame(table(temp$host))
temp[temp$Freq > 100,]
proton(action = "server", host="194.29.178.16")
data(bash_history)
strsplit(bash_history," ")
for(i in strsplit(bash_history," ")){
  proton(action = "login", login="slap", password=i)
}

## 5) Umieszczamy rozwiązanie na repozytorium.