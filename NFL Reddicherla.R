#QUESTION 1

setwd("C:\\Users\\vamsi\\OneDrive\\Email attachments\\Documents\\OR -603")

list.files()

nfl_df <- read.csv("C:\\Users\\vamsi\\OneDrive\\Email attachments\\Documents\\OR -603\\assignment 6NFL team wins and rate stat.csv")

plot(nfl_df$YPA, nfl_df$WINS,xlab = "YPA", ylab = "WINS")

#create the correlation matrix for columns 3...7
cor(nfl_df[3:7])

#create a linear regression model
nfl_model <- lm(WINS ~ YPA + YPC, data=nfl_df)

#view regression results
summary(nfl_model)

#create a linear regression model with more explanatory variables
nfl_model_2 <- lm(WINS ~ YPA + YPC + DYPA + DYPC, data=nfl_df)
plot(nfl_model)

#view regression results
summary(nfl_model_2)

