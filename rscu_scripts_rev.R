# auto install missing packages
list.of.packages <- c("ggplot2", "ggpubr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, repos="http://cran.us.r-project.org")

library("ggplot2")
scaleFUN <- function(x) sprintf("%.2f", x)  #可以设置坐标轴显示的小数点位数，为了与图注保持一致

one <- read.table("/Users/josefbenito/UAH_Docs/Tools/PhyloSuite_v1.1.15_Mac/PhyloSuite/myWorkPlace/GenBank_File/files/extract_results/2021_05_20-18_43_13_Final/StatFiles/RSCU/MN175619.1_RSCU_stack.csv",header = TRUE,sep=",")
fone <- factor(one$Fill, levels = unique(rev(one$Fill)))   #填充的颜色的factor
#自定义横坐标顺序
xone <- factor(one$AA, levels=c("Gln","His","Asn","Pro","Thr","Leu1","Glu","Met","Arg","Tyr","Asp","Lys","Ala","Ile","Ser1","Ser2","Leu2","Cys","Trp","Val","Gly","Phe"))  #横坐标
yone <- one$RSCU  #Y值
zone <- one$Equality  #图注的Y值
lone <- one$Codon  #图注打标签
p1 <- ggplot(data = one, mapping = aes(x = xone, y = yone, fill = fone,width = .7)) + geom_bar(stat = 'identity', position = 'stack')+ ggtitle("Bactrurus brachycaudus")+theme(axis.title.x=element_blank(),axis.title.y=element_text(size=10),legend.position="none",panel.background=element_blank(),panel.grid.minor=element_blank(),plot.background=element_blank(),axis.line.x = element_line(color="black", size = 0.5),axis.line.y = element_line(color="black", size = 0.5),axis.text.x=element_blank(), plot.title=element_text(family="sans",face="italic",hjust=0,size=10)) + scale_fill_manual("legend", values = c("1" = "#6598c9", "2" = "#cb4a28", "3" = "#9ac664", "4" = "#7f5499"))+ ylim(0,5.5)+ylab("RSCU")

two <- read.table("/Users/josefbenito/UAH_Docs/Tools/PhyloSuite_v1.1.15_Mac/PhyloSuite/myWorkPlace/GenBank_File/files/extract_results/2021_05_20-18_43_13_Final/StatFiles/RSCU/MN175620.1_RSCU_stack.csv",header = TRUE,sep=",")
ftwo <- factor(two$Fill, levels = unique(rev(two$Fill)))   #填充的颜色的factor
#自定义横坐标顺序
xtwo <- factor(two$AA, levels=c("Gln","His","Asn","Pro","Thr","Leu1","Glu","Met","Arg","Tyr","Asp","Lys","Ala","Ile","Ser1","Ser2","Leu2","Cys","Trp","Val","Gly","Phe"))  #横坐标
ytwo <- two$RSCU  #Y值
ztwo <- two$Equality  #图注的Y值
ltwo <- two$Codon  #图注打标签
p2 <- ggplot(data = two, mapping = aes(x = xtwo, y = ytwo, fill = ftwo,width = .7)) + geom_bar(stat = 'identity', position = 'stack')+ ggtitle("Stygobromus pizzinii")+theme(axis.title.x=element_blank(),axis.title.y=element_text(size=10),legend.position="none",panel.background=element_blank(),panel.grid.minor=element_blank(),plot.background=element_blank(),axis.line.x = element_line(color="black", size = 0.5),axis.line.y = element_line(color="black", size = 0.5),axis.text.x=element_blank(), plot.title=element_text(family="sans",face="italic",hjust=0,size=10)) + scale_fill_manual("legend", values = c("1" = "#6598c9", "2" = "#cb4a28", "3" = "#9ac664", "4" = "#7f5499"))+ ylim(0,5.5)+ylab("RSCU")

three <- read.table("/Users/josefbenito/UAH_Docs/Tools/PhyloSuite_v1.1.15_Mac/PhyloSuite/myWorkPlace/GenBank_File/files/extract_results/2021_05_20-18_43_13_Final/StatFiles/RSCU/MN175621.1_RSCU_stack.csv",header = TRUE,sep=",")
fthree <- factor(three$Fill, levels = unique(rev(three$Fill)))   #填充的颜色的factor
#自定义横坐标顺序
xthree <- factor(three$AA, levels=c("Gln","His","Asn","Pro","Thr","Leu1","Glu","Met","Arg","Tyr","Asp","Lys","Ala","Ile","Ser1","Ser2","Leu2","Cys","Trp","Val","Gly","Phe"))  #横坐标
ythree <- three$RSCU  #Y值
zthree <- three$Equality  #图注的Y值
lthree <- three$Codon  #图注打标签
p3 <- ggplot(data = three, mapping = aes(x = xthree, y = ythree, fill = fthree,width = .7)) + geom_bar(stat = 'identity', position = 'stack')+ ggtitle("Stygobromus tenuis potomacus_MN")+theme(axis.title.x=element_blank(),axis.title.y=element_text(size=10),legend.position="none",panel.background=element_blank(),panel.grid.minor=element_blank(),plot.background=element_blank(),axis.line.x = element_line(color="black", size = 0.5),axis.line.y = element_line(color="black", size = 0.5),axis.text.x=element_blank(), plot.title=element_text(family="sans",face="italic",hjust=0,size=10)) + scale_fill_manual("legend", values = c("1" = "#6598c9", "2" = "#cb4a28", "3" = "#9ac664", "4" = "#7f5499"))+ ylim(0,5.5)+ylab("RSCU")

four <- read.table("/Users/josefbenito/UAH_Docs/Tools/PhyloSuite_v1.1.15_Mac/PhyloSuite/myWorkPlace/GenBank_File/files/extract_results/2021_05_20-18_43_13_Final/StatFiles/RSCU/KU869712.1_RSCU_stack.csv",header = TRUE,sep=",")
ffour <- factor(four$Fill, levels = unique(rev(four$Fill)))   #填充的颜色的factor
#自定义横坐标顺序
xfour <- factor(four$AA, levels=c("Gln","His","Asn","Pro","Thr","Leu1","Glu","Met","Arg","Tyr","Asp","Lys","Ala","Ile","Ser1","Ser2","Leu2","Cys","Trp","Val","Gly","Phe"))  #横坐标
yfour <- four$RSCU  #Y值
zfour <- four$Equality  #图注的Y值
lfour <- four$Codon  #图注打标签
p4 <- ggplot(data = four, mapping = aes(x = xfour, y = yfour, fill = ffour,width = .7)) + geom_bar(stat = 'identity', position = 'stack')+ ggtitle("Stygobromus tenuis potomacus_KU")+theme(axis.title.x=element_blank(),axis.title.y=element_text(size=10),legend.position="none",panel.background=element_blank(),panel.grid.minor=element_blank(),plot.background=element_blank(),axis.line.x = element_line(color="black", size = 0.5),axis.line.y = element_line(color="black", size = 0.5),axis.text.x=element_blank(), plot.title=element_text(family="sans",face="italic",hjust=0,size=10)) + scale_fill_manual("legend", values = c("1" = "#6598c9", "2" = "#cb4a28", "3" = "#9ac664", "4" = "#7f5499")) + ylim(0,5.5)+ylab("RSCU")

five <- read.table("/Users/josefbenito/UAH_Docs/Tools/PhyloSuite_v1.1.15_Mac/PhyloSuite/myWorkPlace/GenBank_File/files/extract_results/2021_05_20-18_43_13_Final/StatFiles/RSCU/NC_030261.1_RSCU_stack.csv",header = TRUE,sep=",")
fthree <- factor(three$Fill, levels = unique(rev(three$Fill)))   #填充的颜色的factor
#自定义横坐标顺序
xthree <- factor(three$AA, levels=c("Gln","His","Asn","Pro","Thr","Leu1","Glu","Met","Arg","Tyr","Asp","Lys","Ala","Ile","Ser1","Ser2","Leu2","Cys","Trp","Val","Gly","Phe"))  #横坐标
ythree <- three$RSCU  #Y值
zthree <- three$Equality  #图注的Y值
lthree <- three$Codon  #图注打标签
p5 <- ggplot(data = three, mapping = aes(x = xthree, y = ythree, fill = fthree,width = .7)) + geom_bar(stat = 'identity', position = 'stack')+ ggtitle("Stygobromus indentatus")+theme(axis.title.x=element_blank(),axis.title.y=element_text(size=10),legend.position="none",panel.background=element_blank(),panel.grid.minor=element_blank(),plot.background=element_blank(),axis.line.x = element_line(color="black", size = 0.5),axis.line.y = element_line(color="black", size = 0.5),axis.text.x=element_blank(), plot.title=element_text(family="sans",face="italic",hjust=0,size=10)) + scale_fill_manual("legend", values = c("1" = "#6598c9", "2" = "#cb4a28", "3" = "#9ac664", "4" = "#7f5499"))+ ylim(0,5.5)+ylab("RSCU")

six <- read.table("/Users/josefbenito/UAH_Docs/Tools/PhyloSuite_v1.1.15_Mac/PhyloSuite/myWorkPlace/GenBank_File/files/extract_results/2021_05_20-18_43_13_Final/StatFiles/RSCU/MN175622.1_RSCU_stack.csv",header = TRUE,sep=",")
ffour <- factor(four$Fill, levels = unique(rev(four$Fill)))   #填充的颜色的factor
#自定义横坐标顺序
xfour <- factor(four$AA, levels=c("Gln","His","Asn","Pro","Thr","Leu1","Glu","Met","Arg","Tyr","Asp","Lys","Ala","Ile","Ser1","Ser2","Leu2","Cys","Trp","Val","Gly","Phe"))  #横坐标
yfour <- four$RSCU  #Y值
zfour <- four$Equality  #图注的Y值
lfour <- four$Codon  #图注打标签
p6 <- ggplot(data = four, mapping = aes(x = xfour, y = yfour, fill = ffour,width = .7)) + geom_bar(stat = 'identity', position = 'stack')+ ggtitle("Stygobromus allegheniensis")+theme(axis.title.x=element_blank(),axis.title.y=element_text(size=10),legend.position="none",panel.background=element_blank(),panel.grid.minor=element_blank(),plot.background=element_blank(),axis.line.x = element_line(color="black", size = 0.5),axis.line.y = element_line(color="black", size = 0.5),axis.text.x=element_blank(), plot.title=element_text(family="sans",face="italic",hjust=0,size=10)) + scale_fill_manual("legend", values = c("1" = "#6598c9", "2" = "#cb4a28", "3" = "#9ac664", "4" = "#7f5499")) + ylim(0,5.5)+ylab("RSCU")

seven <- read.table("/Users/josefbenito/UAH_Docs/Tools/PhyloSuite_v1.1.15_Mac/PhyloSuite/myWorkPlace/GenBank_File/files/extract_results/2021_05_20-18_43_13_Final/StatFiles/RSCU/MN175623.1_RSCU_stack.csv",header = TRUE,sep=",")
ffive <- factor(five$Fill, levels = unique(rev(five$Fill)))   #填充的颜色的factor
#自定义横坐标顺序
xfive <- factor(five$AA, levels=c("Gln","His","Asn","Pro","Thr","Leu1","Glu","Met","Arg","Tyr","Asp","Lys","Ala","Ile","Ser1","Ser2","Leu2","Cys","Trp","Val","Gly","Phe"))  #横坐标
yfive <- five$RSCU  #Y值
zfive <- five$Equality  #图注的Y值
lfive <- five$Codon  #图注打标签
p7 <- ggplot(data = five, mapping = aes(x = xfive, y = yfive, fill = ffive,width = .7)) + geom_bar(stat = 'identity', position = 'stack')+ ggtitle("Crangonyx forbesi")+theme(axis.title.x=element_blank(),axis.title.y=element_text(size=10),legend.position="none",panel.background=element_blank(),panel.grid.minor=element_blank(),plot.background=element_blank(),axis.line.x = element_line(color="black", size = 0.5),axis.line.y = element_line(color="black", size = 0.5), plot.title=element_text(family="sans",face="italic",hjust=0,size=10)) + scale_fill_manual("legend", values = c("1" = "#6598c9", "2" = "#cb4a28", "3" = "#9ac664", "4" = "#7f5499"))+ ylim(0,5.5)+ylab("RSCU")

p <- ggplot(data = one, mapping = aes(x = xone, y = zone, fill = fone,width = .9)) + geom_bar(stat = 'identity', position = 'stack') + geom_text(mapping = aes(label = lone), size = 2.4, colour = 'white', position = position_stack(vjust=.5))+theme(axis.text.x=element_blank(),axis.text.y=element_blank(),axis.ticks=element_blank(),axis.title.x=element_blank(),axis.title.y=element_blank(),legend.position="none",panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),panel.grid.minor=element_blank(),plot.background=element_blank(),axis.line.y = element_blank()) + scale_fill_manual("legend", values = c("1" = "#6598c9", "2" = "#cb4a28", "3" = "#9ac664", "4" = "#7f5499"))

library("ggpubr")
pall <- ggarrange(p1,p2,p3,p4,p5,p6,p7,p, heights=c(1,1,1,1,1,1,1,0.50), ncol=1, nrow=8, align ="v")
pdf("/Users/josefbenito/UAH_Docs/Tools/PhyloSuite_v1.1.15_Mac/PhyloSuite/myWorkPlace/GenBank_File/files/RSCUfig_results/2021_05_25-12_30_12/RSCU_rev.pdf",width=8,height=8) ## 如果觉得比例不合适，可以适当调整width和height的大小。
pall
dev.off() 
