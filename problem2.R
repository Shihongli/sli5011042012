data= read.csv('data.csv', header = T)
attach(data)
golds = data[data$Medal == "Gold", ]
silvers = data[data$Medal == "Silver", ]
bronzes = data[data$Medal == "Bronze", ]
gstats = tapply(rep(1, dim(golds)[1]), golds$NOC, sum)
sstats = tapply(rep(1, dim(silvers)[1]), silvers$NOC, sum)
bstats = tapply(rep(1, dim(bronzes)[1]), bronzes$NOC, sum)
n = names(gstats)
dimnames(gstats) = NULL
dimnames(sstats) = NULL
dimnames(bstats) = NULL
problem2 = data.frame(NOC = n, Gold = gstats, Silver = sstats, Bronze = bstats)
save(problem2, file = "problem2.RData", list = c('problem2'))