#title: "Assignment 2 Exercise 1"
#author: "Songying Chen"
#date: "Oct 24 2023"
#output: R script

#select data set swiss
df <- data(swiss)

#set a function to get the real fertility rate of Swiss
fertility_rate <- function(data){
  #divide the old variable by 100 and plus 1 to get the meaningful fertility rate
    data$Fertility = data$Fertility/100 + 1 
  return(data$Fertility) #return the fertility rate
}

fertility_rate(swiss)