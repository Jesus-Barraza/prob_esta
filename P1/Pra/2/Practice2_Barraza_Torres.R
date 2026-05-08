library(readxl)
data <- read_excel("C:/Users/USER/Downloads/DatosDeLaEncuesta.xlsx") #Import
View(data) #This one is for verification

nrow(data) #Rows
ncol(data) #Columns
str(data) #Summary

head(data) #First registers

tail(data) #Last registers

age <- data$Edad_Trabajo_estable
carreer <- data$Carrera

freq_carrer <- table(carreer)
print(freq_carrer)

freq_age <- table(age)

#Histogram
hist(freq_carrer, col="#CCFFCC", main = "Carrer Frequency")

#Bar graph
barplot(freq_carrer, col="#CCFFCC", main = "Carrer Frequency")

#Frequency graph
boxplot(age ~ carreer, col = c("#CCFFCC", "#FFCCCC"), main= "Edad estable por carrera")

mean(freq_carrer) #Mean
median(freq_carrer) #Median
mode <- table(carreer)
print(mode) #Mode
range(freq_carrer) #Range
var(freq_carrer) #Variance
sd(freq_carrer) #Standart desviation