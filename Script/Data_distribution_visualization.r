library(readxl)

#Load the response data
election_data <- read_excel("D:/aapp/Statistical_Inference_Assignment/responses/Sri_Lanka_Presidential_Election _Responses _preprocessed.xlsx")

interested_people <- subset(election_data, To_be_vote == "Yes")
genderDistribution <- table(interested_people$gender)


#Bar plot for gender distribution
barplot(genderDistribution, main="Gender Distribution of voted people", col=c("red"),
        xlab="gender",ylab="Frequency")



#Second priority candidate distribution
second_priority_candidate <- table(interested_people$second_priority)
second_priority_candidates_result <- subset(second_priority_candidate, second_priority_candidate >7)
minor_candidate <- subset(second_priority_candidate, second_priority_candidate <=7)
c1 <- c("Others"=sum(minor_candidate))
second_priority_candidates_result <- c(second_priority_candidates_result, c1)
#Second priority candidate pie chart
pie(second_priority_candidates_result, col = c("red","green","yellow", "blue","brown","orange"),main="Second priority candidate in voting")
barplot(second_priority_candidates_result, main="Second priority candidate in voting",  names.arg = c("Anura","Gotabaya","Sivajilinkam", "Mahesh","Sajith","Others"),
        xlab="Candidates",ylab="Count")


#Third priority candidate distribution
third_priority_candidate <- table(interested_people$third_priority)

third_priority_candidates_result <- subset(third_priority_candidate, third_priority_candidate >10)
minor_candidate_third <- subset(third_priority_candidate, third_priority_candidate <=10)
c1 <- c("Others"=sum(minor_candidate_third))
third_priority_candidates_result <- c(third_priority_candidates_result, c1)
#Third priority candidate - Bar chart
barplot(third_priority_candidates_result, main="Third priority candidate in voting",  names.arg = c("Anura","Gotabaya","Mahesh", "No one","Sajith","Others"),
        xlab="Candidates",ylab="Count")
