library(readxl)

#Load the response data
election_data <- read_excel("D:/aapp/Statistical_Inference_Assignment/responses/Sri_Lanka_Presidential_Election _Responses _preprocessed.xlsx")

interested_people <- subset(election_data, To_be_vote == "Yes")
genderDistribution <- table(interested_people$gender)


#Bar plot for gender distribution
barplot(genderDistribution, main="Gender Distribution of voted people", col=c("red"),
        xlab="gender",ylab="Frequency")

second_priority_candidate <- table(interested_people$second_priority)


#Bar plot for second priority candidate
barplot(second_priority_candidate, main="Second priority candidate among voted people", col=c("red"),
        xlab="second_priority",ylab="Frequency")

