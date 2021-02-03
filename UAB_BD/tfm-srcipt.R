#Exploración
install.packages('plyr')

library(benford.analysis)
#Se debe preconfigurar el directorio base en donde funcionaran todor los ficheros
setwd("/home/ach/Documentos/master2021/UAB_BD/")



#Benford Analysis -1 digito 
#Los enlaces que van entre comillas deberán ser actualizados
#para el directorio en donde se desea que el fichero sea alojado
campa<-read.csv("precampa_campa_todosloscandidatos_porfechas.csv")
campaniatotal<-rbind(campa)
View(campaniatotal)
BenfordApp<-benford.analysis::benford(campaniatotal$Number.of.retweets,number.of.digits = 1,sign = "positive",discrete = TRUE)
plot(BenfordApp)


#Benford Analysis -2 digitos 
#Los enlaces que van entre comillas deberán ser actualizados
#para el directorio en donde se desea que el fichero sea alojado
precampa<-read.csv("datasets_precampa_cuentas/dataset_YAKU.csv")
campa<-read.csv("datasets_campa_cuentas/dataset_YAKU.csv")
campaniatotal<-rbind(precampa,campa)
BenfordApp<-benford.analysis::benford(campaniatotal$from_user_favourites_count,number.of.digits = 2,sign = "positive",discrete = TRUE)
plot(BenfordApp)
View(campaniatotal)
View(table(campaniatotal$location))
sum(id_replicas$Freq)


#Benford Extración de usuarios Sospechosos
#Los enlaces que van entre comillas deberán ser actualizados
#para el directorio en donde se desea que el fichero sea alojado
#OBSERVACIÓN: 
#En la linea 39 se debe actualizar la variable  id_replicas$location a id_replicas$from_user_name 
# para poder extraer la frecuencia de los usuarios más activos
sospechoso<-benford.analysis::getSuspects(BenfordApp,campaniatotal,by ="absolute.diff",how.many = 2)
write.csv(sospechoso,file = "/home/ach/Documentos/master2021/UAB_BD/sospechosos_.csv" )
id_replicas<- read.csv("/home/ach/Documentos/master2021/UAB_BD/sospechosos_.csv")
write.csv(table(id_replicas$from_user_name),file ="/home/ach/Documentos/master2021/UAB_BD/sospechosos_YAKU_usr.csv")
id_replicas<- read.csv("/home/ach/Documentos/master2021/UAB_BD/sospechosos_YAKU_usr.csv")
View(id_replicas)

#Para sumar el número total de frecuencias
sum(id_replicas$Freq)


