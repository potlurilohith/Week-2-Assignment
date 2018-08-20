#UCB ADMISSIONS DATASET

UCBAdmissions
#1
View(UCBAdmissions)
sum(UCBAdmissions)
summary(UCBAdmissions)

#2
margin.table(UCBAdmissions,margin = 3)
#3
prop.table(ftable(UCBAdmissions,row.vars="Dept",col.vars="Admit")[1,])
prop.table(ftable(UCBAdmissions,row.vars="Dept",col.vars="Admit")[2,])
prop.table(ftable(UCBAdmissions,row.vars="Dept",col.vars="Admit")[3,])
prop.table(ftable(UCBAdmissions,row.vars="Dept",col.vars="Admit")[4,])
prop.table(ftable(UCBAdmissions,row.vars="Dept",col.vars="Admit")[5,])
prop.table(ftable(UCBAdmissions,row.vars="Dept",col.vars="Admit")[6,])
#4
admit_reject<-aperm(UCBAdmissions,c(3,2, 1))
admit <- admit_reject[,,"Admitted"]
reject<- admit_reject[,,"Rejected"]
admit/(admit+reject)
#############################################################

View(UKSoccer)

#1
summary(UKSoccer)
sum(UKSoccer$)
sum(UKSoccer)
#2
addmargins(UKSoccer)

#3
prop.table(addmargins(UKSoccer))

#4
mean(UKSoccer[,1])
var(UKSoccer[,1])
mean(UKSoccer[,2])
var(UKSoccer[,2])

#####################################################################

#a
UCBAdmissions1 <- as.data.frame(UCBAdmissions)
UCBAdmissions1

UCBAdmissions1<-interaction(UCBAdmissions1$Admit,UCBAdmissions1$Gender,UCBAdmissions1$Dept,UCBAdmissions1$Freq,sep = " -> ")
UCBAdmissions1


#b
UCB.tab2 <- ftable(xtabs(data=UCBAdmissions, Freq~Admit+ Gender+ Dept))
as.matrix(UCB.tab2)


UCB.tab2 <- structable(UCBAdmissions, direction = c("h","h","v"))
as.matrix(UCB.tab2)


####################################################################################

View(VisualAcuity)
#a

xtabs(data=VisualAcuity, Freq~right+ left + gender)

#b
structable(data = VisualAcuity, Freq~right+ left + gender, direction = c("h,v,h"))
x
#c
xtable::xtable(VisualAcuity)
xtable(VisualAcuity[1:32])
