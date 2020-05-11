setwd("~/PhD/Year4/GilesPaper/ReSubmission")
library(readxl) 
library(ggplot2)
library(gridExtra)
library(egg)
dat = read_excel("PieChartData.xlsx",sheet=2,col_names=TRUE)

metabodat = dat[-which(dat$Amount=="NA"),]
exportdat = dat[which(dat$Metabolite=="Export"),-3]
Col0_m = metabodat[which(metabodat$Genotype=="Col0"),-c(1,3)]
Fum2_m = metabodat[which(metabodat$Genotype=="Fum2"),-c(1,3)]
Col0_e=exportdat[which(exportdat$Genotype=="Col0"),-c(1,4)]
Fum2_e=exportdat[which(exportdat$Genotype=="Fum2"),-c(1,4)]

p1 = ggplot(data=Col0_m, aes(x=Treatment, y=Flux, fill=Metabolite)) +
  geom_bar(stat="identity")+
  theme(legend.position = c(0.25,0.8)) + 
  ylim(0, 500) +
  annotate("text", x=3.3, y=500, label= "(a)", size=8) +
  theme(text = element_text(size=20)) + 
  ylab('Diurnal C Accumulation')+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())
p2 = ggplot(data=Fum2_m, aes(x=Treatment, y=Flux, fill=Metabolite)) +
  geom_bar(stat="identity") +
  theme(legend.position = "none") + 
  ylim(0, 500) +
  annotate("text", x=3.3, y=500, label= "(b)", size=8) +
  theme(text = element_text(size=20))+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())

p3 = ggplot(data=Col0_e,aes(x=Treatment, y=Flux)) +
  geom_bar(stat="identity")+ 
  ylim(0, 500) +
  annotate("text", x=3.3, y=500, label= "(c)", size=8) +
  theme(text = element_text(size=20)) +
  ylab('Dirunal C Export (+ Others)')
p4 = ggplot(data=Fum2_e,aes(x=Treatment, y=Flux)) +
  geom_bar(stat="identity")+ 
  ylim(0, 500) +
  annotate("text", x=3.3, y=500, label= "(d)", size=8) +
  theme(text = element_text(size=20))+
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())

ggarrange(p1, p2, p3, p4, nrow = 2)

