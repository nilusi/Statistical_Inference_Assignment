library(readxl)
#Load the response data
election_data <- read_excel("D:/aapp/Statistical_Inference_Assignment/responses/Sri_Lanka_Presidential_Election _Responses _preprocessed.xlsx")

#Extract the voting interest
print(election_data[1])



print(head(subset(election_data, select = 'To_be_vote')))

#Get the count for voting interested and not interested
x <-table(election_data[1])


labels <- c("No","Yes")
pct <- round(x/sum(x)*100)
lbls <- paste(labels, pct) 
lbls <- paste(lbls,"%",sep="")
#Draw the pie chart for peoples interet in voting
pie(x,labels = lbls, col=rainbow(length(lbls)),main="People's interest in voting")


#Retrieve the voting people only
interested_people <- subset(election_data, To_be_vote == "Yes")

#load their first priority frequency for each candidate
first_priority <-table(interested_people[2])
print(first_priority)

pct <- round(first_priority/sum(first_priority)*100)
lbls <- paste(labels, pct) 
lbls <- paste(pct,"%",sep="")
major_candidates <- subset(first_priority, first_priority >5)
minor_candidate <- subset(first_priority, first_priority <5)
c1 <- c("Others"=sum(minor_candidate))
major_candidates <- c(major_candidates, c1)
print(major_candidates)

labels <-c("Anura ","Gotabhaya" ,"Mahesh", 
          "Sajith" ,"Others" )
pct <- round(major_candidates/sum(major_candidates)*100)
lbls <- paste(labels, pct) 
lbls <- paste(lbls,"%",sep="")

#First priority candidate
pie(major_candidates,labels = lbls, col=rainbow(length(lbls)),main="First priority candidate in voting")

executive_system <-table(interested_people[9])
print(executive_system)

labels <- c("No","Yes")
pct <- round(executive_system/sum(executive_system)*100)
lbls <- paste(labels, pct) 
lbls <- paste(lbls,"%",sep="")

#Draw the pie chart for Executive presidential system
pie(x,labels = lbls, col=rainbow(length(lbls)),main="Do we need Executive Presidential System")

