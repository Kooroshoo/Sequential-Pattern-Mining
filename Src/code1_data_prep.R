# Route ID
set.seed(1234)
RouteID <- sample(x = c(1:100),size = 500,replace = T)
RouteID <- sort(RouteID)
RouteID
data <-as.data.frame(RouteID)

# Sub trip ID
data$SubTripOrder <- 1
for (i in 2:nrow(data)) {
  for (j in 1:nrow(data)) {
    if (data$RouteID[i] == data$RouteID[i-1]) {
      data$SubTripOrder[i] = data$SubTripOrder[i-1]+1
    }
    else
      data$SubTripOrder[i] = 1
  }
}

# Source
set.seed(1234)
data$Source <- sample(x = c(1:10),size = 500,replace = T)
data$Dest <- c(data$Source[2:length(data$Source)],1)

# Cleaning
data<-data[!(data$Source==data$Dest),]
row.names(data) <- NULL

# Products
set.seed(1234)
data$P1 <- sample(x = c(1:20, NA),size = nrow(data),replace = T)
set.seed(234)
data$P2 <- sample(x = c(1:20, NA),size = nrow(data),replace = T)
set.seed(34)
data$P3 <- sample(x = c(1:20, NA),size = nrow(data),replace = T)
set.seed(4)
data$P4 <- sample(x = c(1:20, NA),size = nrow(data),replace = T)

temp <- which(data$P1 == data$P2)
data$P2[temp] <- NA
temp <- which(data$P1 == data$P3)
data$P3[temp] <- NA
temp <- which(data$P1 == data$P4)
data$P4[temp] <- NA
temp <- which(data$P2 == data$P3)
data$P3[temp] <- NA
temp <- which(data$P2 == data$P4)
data$P4[temp] <- NA
temp <- which(data$P4 == data$P3)
data$P4[temp] <- NA

# No.(Size) of items
data$size <- rowSums(!is.na(data[,5:8]))
data <- cbind(data[,1:4],"size" = data[,9],data[,5:8])
colnames(data)[5] <- "size"

write.csv(file = "data1.csv",x = data, row.names = F)
