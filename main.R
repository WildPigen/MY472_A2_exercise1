#title: "Assignment 2 Exercise 1"
#author: "Songying Chen"
#date: "Oct 24 2023"
#output: R script

library(dplyr)

#select data set swiss
df <- data(swiss)

#set a function to get the real fertility rate of Swiss
fertility_rate <- function(data,caution){
  #divide the old variable by 100 and plus 1 to get the meaningful fertility rate
    data$Fertility = data$Fertility/100 + 1 
  #creat a new variable to see if the fertility rate is above caution rate
  data <- mutate(data, under_caution = ifelse(Fertility > caution, 0, 1))
  return(data) #return the new data set
}

fertility_rate(swiss,1.5)
