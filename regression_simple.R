#(oublie pas modifier l'emplacement du fichier)
#Dossier qui contien les donnees
setwd("E:/projets/regression_simple_R")

#importation des donnees
agricol<-read.csv("data.csv" ,sep = ";", header = T)

#verification dess donnes
agricol
str(agricol)
summary(agricol)

#Calcule N XBar YBar
N<-length(agricol$X)
XBar<-mean(agricol$X)
YBar<-mean(agricol$Y)

#Calcule SCX=(X-XBar), SCT=(agricol$Y - YBar) et SXY=(Y-YBar)(X-XBar)
SCX<-(agricol$X - XBar)
SCT<-(agricol$Y - YBar)
SXY<-SCT*SCX

#ESTIMATION des A et B 
A_Estime <- sum(SXY)/sum(SCX*SCX)
B_Estime <- Y_bar - X_bar*A_Estime

