library(readxl)

#Load the response data
election_data <- read_excel("D:/aapp/Statistical_Inference_Assignment/responses/Sri_Lanka_Presidential_Election _Responses _preprocessed.xlsx")

presidents_to_be <- table(election_data$president_in_perspective)


print(presidents_to_be)

presidents_to_be_result <- subset(presidents_to_be, presidents_to_be >10)
minor_candidate <- subset(presidents_to_be, presidents_to_be <=10)
c1 <- c("Others"=sum(minor_candidate))
presidents_to_be_result <- c(presidents_to_be_result, c1)

#Next president in peoples perspective - Bar chart
barplot(presidents_to_be_result, main="Next president in peoples perspective",  names.arg = c("Gotabaya", "Sajith","Others"),
        xlab="Candidates",ylab="Vote Count")

pie(presidents_to_be_result, col = c("red","green","blue"),main="Next president in peoples perspective")



#Capability in handling ongoing protests

handling_protest <- table(election_data$capable_to_handing_protest)


print(handling_protest)

handling_protest_result <- subset(handling_protest, handling_protest >10)
minor_candidate <- subset(handling_protest, handling_protest <=10)
c1 <- c("Others"=sum(minor_candidate))
handling_protest_result <- c(handling_protest_result, c1)
print(handling_protest_result)
#Ongoing protest handling power 
barplot(handling_protest_result, main="Capability to handle ongoing protests",  names.arg = c("Anura","Gotabaya", "Sajith","Others"),
        xlab="Candidates",ylab="Vote Count")

pie(handling_protest_result, col = c("red","green","blue"),main="Capability to handle ongoing protests")


