#Allows us to chain operations
library(dplyr)
df <- mtcars

#Nesting
result <- arrange(sample_n(filter(df,mpg>20),5), desc(mpg))
print (result)#Difficult to read

#Multiple Assignments
a <- filter(df,mpg>20)
b <- sample_n(a,5)
result <- arrange(b, desc(mpg))
print(result)#Wasting memory

#Pipe Operator
# Syntax :Data %>% op1 %>% op2 %>%
result <- df %>%filter(mpg>20)%>%sample_n(size = 5)%>% arrange(desc(mpg))
print(result)

