#Cargar libreria para gráficos
library(ggplot2)

#Datos de lanzamiento de la moneda (20)

lanzamientos <- c("Aguila", "Aguila", "Aguila", "Aguila", "Aguila", "Aguila", "Aguila",
                  "Aguila", "Aguila", "Aguila", "Aguila", "Sello", "Sello", "Sello", 
                  "Sello", "Sello", "Sello", "Sello", "Sello", "Sello")

#Tabla de frecuencias 

frecuencias <- table(lanzamientos)
print(frecuencias)

#Crear un dataframe 

df <- as.data.frame(frecuencias)

#Grafico de frecuencias

ggplot(df, aes(x = lanzamientos, y = Freq, fill = lanzamientos)) +
  geom_bar(stat = "identity" ) + 
  labs(title="Resultados de lanzamientos",
       x= "Resultados",
       y= "Frecuencias") +
  theme_dark()

#Frecuencia relativa

rela_frequency <- prop.table(frecuencias)
print(rela_frequency)

  