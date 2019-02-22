library(dplyr)
setwd( "/Users/xuy089/Downloads/UCI HAR Dataset/test")
test<-read.table("X_test.txt")
test_label<-read.table("y_test.txt")
test_sub<-read.table("subject_test.txt")
setwd( "/Users/xuy089/Downloads/UCI HAR Dataset/train")

train<-read.table("X_train.txt")
train_label<-read.table("y_train.txt")
train_sub<-read.table("subject_train.txt")

test_full<-cbind(test,label=test_label$V1,subject=test_sub$V1)
train_full<-cbind(train,label=train_label$V1,subject=train_sub$V1)
data<-rbind(train_full,test_full)

setwd("/Users/xuy089/Downloads")
setwd("UCI HAR Dataset")
measure<-read.table("features.txt")
measure<-measure$V2
measure<-as.vector(measure)
measure<-append(measure,c("label","subject"),after =length(measure))
colnames(data)<-measure
data<-data[, !duplicated(colnames(data))]
data<-select(data,matches("mean\\()|std\\()|label|subject"))
colnames(data)<-gsub("\\()","",colnames(data))

setwd( "/Users/xuy089/Downloads/UCI HAR Dataset")
label<-read.table("activity_labels.txt")
colnames(label)<-c("number","activity")
data<-merge(data,label,by.x="label",by.y="number")
data<-data[,-1]

avg<-group_by(data,activity,subject)
average<-summarize_all(avg,mean)
write.table(average,file = "average.txt",row.names = FALSE)
