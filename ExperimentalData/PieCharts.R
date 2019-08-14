# Carbon Pie Charts

par(mar=c(0,0,0,0),mgp=c(0,0,0),mfrow=c(2,3))

make_pie <- function(slices,ttle){
  lbls <- c("Malate", "Fumarate", "Starch", "Sugar", "Day\nRespiration", "Day Export \n + Other")
  # pct <- round(slices/sum(slices)*100)
  # lbls <- paste(lbls,"\n",pct) # add percents to labels
  # lbls <- paste(lbls,"%",sep="") # ad % to labels 
  pie(slices, labels = lbls,cex=2.5)
  title(main=ttle,line=-1.5,cex.main=3.0)
}

col0_control <- c(2.4,4.8,29,0.1,17,46.8)
make_pie(col0_control,substitute(paste("Col0 Control")))

col0_cold0 <- c(5.0,11,36,0.0092,16,25.7)
make_pie(col0_cold0,substitute(paste("Col0 Cold Day 1")))

col0_cold <- c(9.6,18.4,45,0.006,18,8)
make_pie(col0_cold,substitute(paste("Col0 Cold Day 7")))

fum2_control <- c(8.6,0,42,0.14,19,29.4)
make_pie(fum2_control,substitute(paste(italic('fum2.1'), " Control")))

fum2_cold0 <- c(11.6,0,54,0.001,16,13.4)
make_pie(fum2_cold0,substitute(paste(italic('fum2.1'), " Cold Day 0")))

fum2_cold <- c(18,0,59,0,16,3)
make_pie(fum2_cold,substitute(paste(italic('fum2.1'), " Cold Day 7")))
