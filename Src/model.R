
library(arules)
library(arulesSequences)
library(Matrix)


df <- read.csv("./data1.csv")

df1 <- read_baskets(con = "data1.txt", info = c("sequenceID","eventID","sourceID","destID","SIZE"))
inspect(df1)

s1 <- cspade(df1, parameter = list(support = 0.1), control = list(verbose = TRUE))
summary(s1)

s1.df <- as(s1, "data.frame")
View(s1.df)

r1 <- as(ruleInduction(s1, confidence = 0.2, control = list(verbose = TRUE)), "data.frame")

View(r1)

# write.csv(r1, "r2.csv", row.names = F)
