
#########/Volumes/DADOS/Dados Atualizados - Ultima Vers√£o/AjusteparaAD.xlsx

#########CalcRNN <- read_excel("/Volumes/DADOS/Dados Atualizados - Ultima Vers√£o/AjusteparaAD.xlsx",col_types = c("numeric", "text", "numeric".),
                                                                                                         


######################################################################
############################ PACOTES NECESSARIOS #####################

install.packages("readxl")
install.packages("neuralnet")
install.packages("NeuralNetTools")
install.packages("MASS")
install.packages("corrplot")

library(readxl)
library(neuralnet)
library(NeuralNetTools)
library(MASS)
library(corrplot)


######################################################################
############################ IMPORTA«√O E AJUSTES - COMPLETO #################################
CalcRNN_COMPLETA <- read_excel("D:/Dados Atualizados - Ultima Vers„o/Utlima Tentativa/CALCRNNCOMPLETA.xlsx",col_types = c("numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "text"))

######################################################################
############################ IMPORTA«√O E AJUSTES - TREINAMENTO #################################
CalcRNN_TREINAMENTO <- read_excel("D:/Dados Atualizados - Ultima Vers„o/Utlima Tentativa/CALCRNN_Amostra_Treinamento.xlsx",col_types = c("numeric", "text", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric",
                                                                                                                 "numeric", "numeric", "numeric", "text"))









summary(CalcRNN_TREINAMENTO)

RedeTREINAMENTO <- CalcRNN_TREINAMENTO

RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2018=='lucro')
RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2018=='nlucro')
names(RedeTREINAMENTO) [156] = 'Lucro_2018' 
names(RedeTREINAMENTO) [157] = 'NLucro_2018'

RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2017=='lucro')
RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2017=='nlucro')
names(RedeTREINAMENTO) [158] = 'Lucro_2017' 
names(RedeTREINAMENTO) [159] = 'NLucro_2017'

RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2016=='lucro')
RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2016=='nlucro')
names(RedeTREINAMENTO) [160] = 'Lucro_2016' 
names(RedeTREINAMENTO) [161] = 'NLucro_2016'

RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2015=='lucro')
RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2015=='nlucro')
names(RedeTREINAMENTO) [162] = 'Lucro_2015' 
names(RedeTREINAMENTO) [163] = 'NLucro_2015'

RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2014=='lucro')
RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2014=='nlucro')
names(RedeTREINAMENTO) [164] = 'Lucro_2014' 
names(RedeTREINAMENTO) [165] = 'NLucro_2014'

RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2013=='lucro')
RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2013=='nlucro')
names(RedeTREINAMENTO) [166] = 'Lucro_2013' 
names(RedeTREINAMENTO) [167] = 'NLucro_2013'

RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2012=='lucro')
RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2012=='nlucro')
names(RedeTREINAMENTO) [168] = 'Lucro_2012' 
names(RedeTREINAMENTO) [169] = 'NLucro_2012'

RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2011=='lucro')
RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2011=='nlucro')
names(RedeTREINAMENTO) [170] = 'Lucro_2011' 
names(RedeTREINAMENTO) [171] = 'NLucro_2011'

RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2010=='lucro')
RedeTREINAMENTO = cbind(RedeTREINAMENTO,RedeTREINAMENTO$L_2010=='nlucro')
names(RedeTREINAMENTO) [172] = 'Lucro_2010' 
names(RedeTREINAMENTO) [173] = 'NLucro_2010'

RedeTREINAMENTO = cbind(RedeTREINAMENTO,as.data.frame.logical(RedeTREINAMENTO$L_2018))
RedeTREINAMENTO = cbind(RedeTREINAMENTO,as.data.frame.logical(RedeTREINAMENTO$L_2017))
RedeTREINAMENTO = cbind(RedeTREINAMENTO,as.data.frame.logical(RedeTREINAMENTO$L_2016))
RedeTREINAMENTO = cbind(RedeTREINAMENTO,as.data.frame.logical(RedeTREINAMENTO$L_2015))
RedeTREINAMENTO = cbind(RedeTREINAMENTO,as.data.frame.logical(RedeTREINAMENTO$L_2014))
RedeTREINAMENTO = cbind(RedeTREINAMENTO,as.data.frame.logical(RedeTREINAMENTO$L_2013))
RedeTREINAMENTO = cbind(RedeTREINAMENTO,as.data.frame.logical(RedeTREINAMENTO$L_2012))
RedeTREINAMENTO = cbind(RedeTREINAMENTO,as.data.frame.logical(RedeTREINAMENTO$L_2011))
RedeTREINAMENTO = cbind(RedeTREINAMENTO,as.data.frame.logical(RedeTREINAMENTO$L_2010))

names(RedeTREINAMENTO) [174] = 'Luc_2018'
names(RedeTREINAMENTO) [175] = 'Luc_2017'
names(RedeTREINAMENTO) [176] = 'Luc_2016'
names(RedeTREINAMENTO) [177] = 'Luc_2015'
names(RedeTREINAMENTO) [178] = 'Luc_2014'
names(RedeTREINAMENTO) [179] = 'Luc_2013'
names(RedeTREINAMENTO) [180] = 'Luc_2012'
names(RedeTREINAMENTO) [181] = 'Luc_2011'
names(RedeTREINAMENTO) [182] = 'Luc_2010'


######################################################################
############################ IMPORTA«√O E AJUSTES - Teste #################################

CalcRNN_TESTE <- read_excel("D:/Dados Atualizados - Ultima Vers„o/Utlima Tentativa/CALCRNN_Amostra_Teste.xlsx",col_types = c("numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric", "text", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric",
                                                                                                                                         "numeric", "numeric", "numeric", "text"))


summary(CalcRNN_TESTE)

RedeTESTE <- CalcRNN_TESTE


RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2018=='lucro')
RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2018=='nlucro')
names(RedeTESTE) [156] = 'Lucro_2018' 
names(RedeTESTE) [157] = 'NLucro_2018'

RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2017=='lucro')
RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2017=='nlucro')
names(RedeTESTE) [158] = 'Lucro_2017' 
names(RedeTESTE) [159] = 'NLucro_2017'

RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2016=='lucro')
RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2016=='nlucro')
names(RedeTESTE) [160] = 'Lucro_2016' 
names(RedeTESTE) [161] = 'NLucro_2016'

RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2015=='lucro')
RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2015=='nlucro')
names(RedeTESTE) [162] = 'Lucro_2015' 
names(RedeTESTE) [163] = 'NLucro_2015'

RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2014=='lucro')
RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2014=='nlucro')
names(RedeTESTE) [164] = 'Lucro_2014' 
names(RedeTESTE) [165] = 'NLucro_2014'

RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2013=='lucro')
RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2013=='nlucro')
names(RedeTESTE) [166] = 'Lucro_2013' 
names(RedeTESTE) [167] = 'NLucro_2013'

RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2012=='lucro')
RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2012=='nlucro')
names(RedeTESTE) [168] = 'Lucro_2012' 
names(RedeTESTE) [169] = 'NLucro_2012'

RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2011=='lucro')
RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2011=='nlucro')
names(RedeTESTE) [170] = 'Lucro_2011' 
names(RedeTESTE) [171] = 'NLucro_2011'

RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2010=='lucro')
RedeTESTE = cbind(RedeTESTE,RedeTESTE$L_2010=='nlucro')
names(RedeTESTE) [172] = 'Lucro_2010' 
names(RedeTESTE) [173] = 'NLucro_2010'

RedeTESTE = cbind(RedeTESTE,as.data.frame.logical(RedeTESTE$L_2018))
RedeTESTE = cbind(RedeTESTE,as.data.frame.logical(RedeTESTE$L_2017))
RedeTESTE = cbind(RedeTESTE,as.data.frame.logical(RedeTESTE$L_2016))
RedeTESTE = cbind(RedeTESTE,as.data.frame.logical(RedeTESTE$L_2015))
RedeTESTE = cbind(RedeTESTE,as.data.frame.logical(RedeTESTE$L_2014))
RedeTESTE = cbind(RedeTESTE,as.data.frame.logical(RedeTESTE$L_2013))
RedeTESTE = cbind(RedeTESTE,as.data.frame.logical(RedeTESTE$L_2012))
RedeTESTE = cbind(RedeTESTE,as.data.frame.logical(RedeTESTE$L_2011))
RedeTESTE = cbind(RedeTESTE,as.data.frame.logical(RedeTESTE$L_2010))

names(RedeTESTE) [174] = 'Luc_2018'
names(RedeTESTE) [175] = 'Luc_2017'
names(RedeTESTE) [176] = 'Luc_2016'
names(RedeTESTE) [177] = 'Luc_2015'
names(RedeTESTE) [178] = 'Luc_2014'
names(RedeTESTE) [179] = 'Luc_2013'
names(RedeTESTE) [180] = 'Luc_2012'
names(RedeTESTE) [181] = 'Luc_2011'
names(RedeTESTE) [182] = 'Luc_2010'


######################################################################
############################ MODELOS #################################


#####Modelo 2018

ModelFin2018 = neuralnet(Lucro_2018 + NLucro_2018 ~ LiqG_2018 + Mliq_2018 + CompEnd_2018 + EBITDA_2018 + ROI_2018 + ROE_2018 + PCT_2018 + GA_2018 + PF_2018 + VC_2018 + VS_2018 + TXPIB_2018, data.frame(RedeTREINAMENTO), hidden=c(17,10,5,4), threshold = 0.0001, stepmax = 10000000, startweights = NULL,  algorithm = 'rprop+', rep = 10, act.fct = 'logistic', linear.output = TRUE, likelihood = "TRUE")


##### Predi√ß√£o
TesteRNNFin2018 <- compute(ModelFin2018,RedeTESTE)


####Ajustes Resultados
Resultado2018 = as.data.frame(TesteRNNFin2018$net.result)

names (Resultado2018) [1] = 'Lucro_2018'
names (Resultado2018) [2] = 'NLucro_2018'

Resultado2018$Class = colnames(Resultado2018[,1:2])[max.col(Resultado2018[,1:2],ties.method = 'first')]


#Tabela de Acertos e Erros
ConfusResult2018 = table(Resultado2018$Class,RedeTESTE$L_2018)

#Percentual de Acerto da Rede Neural
Percent_Acerto2018 = sum(diag(ConfusResult2018)*100/sum(ConfusResult2018))


#######################################################
#######################################################

#####Modelo 2018/2017

ModelFin2018_17 = neuralnet(Lucro_2018 + NLucro_2018 ~ LiqG_2017
                            + Mliq_2017 + CompEnd_2017 
                            + EBITDA_2017 + ROI_2017 + ROE_2017 
                            + PCT_2017 + GA_2017 
                            + PF_2017 + VC_2017 + VS_2017 
                            + TXPIB_2017,  data.frame(RedeTREINAMENTO), 
                            hidden=c(17,10,5,4), threshold = 0.001, 
                            stepmax = 10000000, startweights = NULL,  
                            algorithm = 'rprop+', rep = 10, act.fct = 'logistic', 
                            linear.output = TRUE, likelihood = "TRUE")


##### Predi√ß√£o
TesteRNNFin2018_17 <- compute(ModelFin2018_17,RedeTESTE)


####Ajustes Resultados
Resultado2018_17 = as.data.frame(TesteRNNFin2018_17$net.result)

names (Resultado2018_17) [1] = 'Lucro_2018'
names (Resultado2018_17) [2] = 'NLucro_2018'

Resultado2018_17$Class = colnames(Resultado2018_17[,1:2])[max.col(Resultado2018_17[,1:2],ties.method = 'first')]


#Tabela de Acertos e Erros
ConfusResult2018_17 = table(Resultado2018_17$Class,RedeTESTE$L_2018)

#Percentual de Acerto da Rede Neural
Percent_Acerto2018_17 = sum(diag(ConfusResult2018_17)*100/sum(ConfusResult2018_17))

#######################################################
#######################################################

######Modelo 2018H

ModelFin2018H = neuralnet(NLucro_2018 + Lucro_2018 ~ LiqG_2017 + Mliq_2017 + CompEnd_2017 + End_2017 + EBITDA_2017 + ROI_2017 + ROE_2017 + PCT_2017 + GA_2017 + QE_2017 + EstAgri_2017 + PF_2017 + VC_2017 + VS_2017 + TXPIB_2017 + Lucr_2016 + Lucr_2015 + Lucr_2014 + Lucr_2013 + Lucr_2012 + Lucr_2011,  data.frame(RedeTeste), hidden=c(17,10), threshold = 0.01, rep = 10, stepmax = 10000000, startweights = NULL, algorithm = 'rprop+', act.fct = 'logistic', linear.output = TRUE, likelihood = "TRUE")

##### Predi√ß√£o
TesteRNNFin2018H <- compute(ModelFin2018H,RedeTeste)


####Ajustes Resultados
Resultado2018H = as.data.frame(TesteRNNFin2018H$net.result)

names (Resultado2018H) [1] = 'Lucro_2018'
names (Resultado2018H) [2] = 'NLucro_2018'

Resultado2018H$Class = colnames(Resultado2018H[,1:2])[max.col(Resultado2018H[,1:2],ties.method = 'first')]


#Tabela de Acertos e Erros
ConfusResult2018H = table(Resultado2018H$Class,RedeTeste$L_2018)


#Percentual de Acerto da Rede Neural
Percent_Acerto2018H = sum(diag(ConfusResult2018H)*100/sum(ConfusResult2018H))




######################################################################
############################ RESULTADOS ##############################


# Resultados ModelFin2018

#Matriz de Acertos e Erros
ConfusResult2018

#Percentual de Acerto da Rede Neural
Percent_Acerto2018

###### Importancia de cada vari√°vel
olden(ModelFin2018, struct = c(17,10,5,4,2), out_var = 'NLucro_2018', bar_plot = FALSE)

###### Summaries RNNModel
prediction(ModelFin2018)


# Resultados ModelFin2018_17

#Matriz de Acertos e Erros
ConfusResult2018_17

#Percentual de Acerto da Rede Neural
Percent_Acerto2018_17

###### Importancia de cada vari√°vel
olden(ModelFin2018_17, struct = c(17,10,5,4,2), out_var = 'NLucro_2018', bar_plot = FALSE)

###### Summaries RNNModel
prediction(ModelFin2018_17)


# Resultados ModelFin2018H

#Matriz de Acertos e Erros
ConfusResult2018H

#Percentual de Acerto da Rede Neural
Percent_Acerto2018H

###### Importancia de cada vari√°vel
olden(ModelFin2018H, struct = c(17,10,5,4,2), out_var = 'NLucro_2018', bar_plot = FALSE)

###### Summaries RNNModel
prediction(ModelFin2018H)


######################################################################
############################ CORRELOGRAMAS ###########################



### 2018

corrplot(cor(CalcRNN_COMPLETA[3:15]), method = "color",type = "upper" , tl.pos = NULL, tl.cex = 1, tl.col = "red", tl.offset = 0.4, tl.srt = 90, cl.pos = NULL, cl.lim = NULL, cl.length = NULL, cl.cex = 0.7, cl.ratio = 0.15, cl.align.text = "c", cl.offset = 0.5, number.cex = 0.6, number.font = 1, number.digits = NULL, addshade = c("negative"), shade.lwd = 2, shade.col = "white", addCoef.col = "black")

### 2017

corrplot(cor(CalcRNN_COMPLETA[17:29]), method = "color",type = "upper", tl.pos = NULL, tl.cex = 1, tl.col = "red", tl.offset = 0.4, tl.srt = 90, cl.pos = NULL, cl.lim = NULL, cl.length = NULL, cl.cex = 0.7, cl.ratio = 0.15, cl.align.text = "c", cl.offset = 0.5, number.cex = 0.6, number.font = 1, number.digits = NULL, addshade = c("negative"), shade.lwd = 2, shade.col = "white", addCoef.col = "black")

### 2016

corrplot(cor(CalcRNN_COMPLETA[31:43]), method = "color",type = "upper", tl.pos = NULL, tl.cex = 1, tl.col = "red", tl.offset = 0.4, tl.srt = 90, cl.pos = NULL, cl.lim = NULL, cl.length = NULL, cl.cex = 0.7, cl.ratio = 0.15, cl.align.text = "c", cl.offset = 0.5, number.cex = 0.6, number.font = 1, number.digits = NULL, addshade = c("negative"), shade.lwd = 2, shade.col = "white", addCoef.col = "black")

