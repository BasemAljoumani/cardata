getwd()
setwd("C:/Users/Ammar/Documents/2023/Udemy_Courses/R_Programming_Advanced_Analytics_R_For _Data_Science/Section_2_Data_Preparation")
getwd()
dir()
fin <- read.csv("P3-Future-500-The-Dataset.csv", stringsAsFactors = T)
fin
head(fin)
summary(fin)
str(fin)
sessionInfo()

# Changing from non-factor to factor:
fin$ID <- factor(fin$ID)

fin$Inception <- factor(fin$Inception)


# Factor Variable Trap 
# it is when you convert factor variable to non-factor variable
# converting into numeric for Character:

a <- c("12", "13", "14", "12", "12")
str(a)
typeof(a)
b <- as.numeric(a)
b

# converting into numeric for Factor:
z <- factor(c("12", "13", "14", "12", "12"))
z

y <- as.numeric(z)
y   # the result completly not as I want it gives 1 2 3 1 1 

typeof(y)

# ----- correct way:
# first covert the z as character then as nuemric

y <- as.character(z)
y <- as.numeric(y)
y
typeof(y)

x <- as.numeric(as.character(z))
x

###

summary(fin)

#fin$Profit <- as.factor(fin$Profit)  # dangerus , to convert profit to factor then to numeric
#str(fin)

#fin$Profit <- as.numeric(fin$Profit)
#str(fin)

# sub() and gsub()
