getwd()
#librerias
library(readxl)
library(naniar)
library(dplyr)
#cargamos datos
df<-read_xlsx("online_retail_II.xlsx")
#revisamos formatos
str(df)
df$`Customer ID`<-as.character(df$`Customer ID`)
#analisis basico de la informacion
summary(datos)
sum(is.na(datos))
miss_var_summary(datos)
dim(datos)
#cuantos pedidos distintos hay
length(unique(datos$Invoice))
