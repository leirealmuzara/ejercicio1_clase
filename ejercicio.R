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
summary(df)
sum(is.na(df))
miss_var_summary(df)
dim(df)
#cuantos pedidos distintos hay
length(unique(df$Invoice))
#precio medio de producto por pedido
precio_medio<-df%>%
  group_by(Description)%>%
  summarize(media=mean(Price))
precio_medio
