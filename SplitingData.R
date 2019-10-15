#read the data set
myDF <- read.csv("/class/datamine/data/8451/The_Complete_Journey_2_Master/5000_transactions.csv")

#spliting the data and priintiing the split data
myresults <- split(myDF,myDF$STORE_R)
myresults

#1c. class=list length=4 names=central east south west
class(myresults)
length(myresults)
names(myresults)

#1d. dimensions=2463343 9
dim(myresults[["CENTRAL"]])

#1e. dimensions=2463343 9
centralresults <- myDF[myDF$STORE_R == "CENTRAL", ]
dim(centralresults)

#2a. setting myproducts= to data set
myproducts <- read.csv("/class/datamine/data/8451/The_Complete_Journey_2_Master/5000_transactions.csv")

#2b. merge variables 
mybigDF <- merge(myDF,myproducts,by = "PRODUCT_NUM")

#3a. subsetting PURCHASE_
subset(myDF,myDF$PURCHASE_ == "23-DEC-17")

#3b. finding the dollar amount
subset(myDF,myDF$PURCHASE_ == "23-DEC-17",SPEND)

#3c.
subset(myDF,myDF$PURCHASE_ == "23-DEC-17",SPEND,PURCHASE_)

#3d
subset(myDF,myDF$PURCHASE_ == "23-DEC-17",SPEND,PURCHASE_,STORE_R)

#3e. EAST
tail(tapply((subset)subset(myDF,myDF$PURCHASE_ == "23-DEC-17",c(SPEND,PURCHASE_,STORE_R))SPEND,(subset(subset(myDF,myDF$PURCHASE_ == "23-DEC-17")))


