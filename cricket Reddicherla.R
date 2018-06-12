#QUESTION 2


cric_df <- read.csv("C:\\Users\\vamsi\\OneDrive\\Email attachments\\Documents\\OR -603\\Assignment 06 cricket batsman stats.csv")

head(cric_df)

#a)

plot(cric_df$Runs,cric_df$X6s, xlab = "Runs", ylab = "Number of Sixers")

plot(cric_df$Runs,cric_df$X4s, xlab = "Runs", ylab = "Number of Fours")


# b)

cor(cric_df[c(6,13:15)])

# c)

cric_model <- lm(Runs ~ X0 + X4s +X6s, data=cric_df)
summary(cric_model)
plot(cric_model)

