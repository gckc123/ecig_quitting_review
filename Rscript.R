library(netmeta)

currentDataset <- read.csv("clean data 21.6.2020.csv")
currentDataset <- currentDataset[currentDataset$analysis1 == 1, ]
res <- netmeta::netmeta(logRR,seRR,Treat1,Treat2, Study, sm="RR", data=currentDataset, level = 0.975, level.comb = 0.975)
res

netgraph(res, seq=c("NRT", "Nicotine EC", "control"))
netheat(res)
netsplit(res, reference.group = "Nicotine EC")
forest(netsplit(res, reference.group = "Nicotine EC"))
funnel(res, order = c("Nicotine EC","control", "NRT"), linreg = TRUE)

################################################################################

currentDataset <- read.csv("clean data 21.6.2020.csv")
currentDataset <- currentDataset[currentDataset$analysis2 == 1, ]
res <- netmeta::netmeta(logRR,seRR,Treat1,Treat2, Study, sm="RR", data=currentDataset, level = 0.975, level.comb = 0.975)
res

netgraph(res, seq=c("NRT", "Nicotine EC", "control"))
netheat(res)
netsplit(res, reference.group = "Nicotine EC")
forest(netsplit(res, reference.group = "Nicotine EC"))
funnel(res, order = c("Nicotine EC","control", "NRT"), linreg = TRUE)

################################################################################
library(netmeta)

currentDataset <- read.csv("clean data 21.6.2020.csv")
currentDataset <- currentDataset[currentDataset$analysis3 == 1, ]
res <- netmeta::netmeta(logRR,seRR,Treat1,Treat2, Study, sm="RR", data=currentDataset, level = 0.975, level.comb = 0.975)
res

netgraph(res, seq=c("NRT", "Nicotine EC", "control"))
netheat(res)
netsplit(res, reference.group = "Nicotine EC")
forest(netsplit(res, reference.group = "Nicotine EC"))
funnel(res, order = c("Nicotine EC","control", "NRT"), linreg = TRUE)
