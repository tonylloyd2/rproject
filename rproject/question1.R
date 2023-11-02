---
  output:
  pdf_document: default
html_document: default
---
  # Question Descriptive Statistics
  
  # import data csv
  data <- read.csv("C:\Users\lloyd\Documents\GitHub\rproject\rproject\deaths.csv")


# Five-number summary
summary(data$dm_prev_adj)
summary(data$Stroke_Death_Rate_Per_100000)

# Histograms
hist(data$dm_prev_adj, main="Histogram of Diagnosed Diabetes Percentage", xlab="Diagnosed Diabetes Percentage")
hist(data$Stroke_Death_Rate_Per_100000, main="Histogram of Stroke Death Rate per 100,000", xlab="Stroke Death Rate per 100,000")


# Scatter
plot(data$dm_prev_adj, data$Stroke_Death_Rate_Per_100000, main="Scatterplot of Stroke Death Rate vs Diagnosed Diabetes Percentage", xlab="Diagnosed Diabetes Percentage", ylab="Stroke Death Rate per 100,000")

# Selecting numeric variables
numeric_data <- data[, sapply(data, is.numeric)]

# Correlation matrix
cor_matrix <- cor(numeric_data)

# Correlation of all variables with Stroke_Death_Rate_Per_100000
cor_matrix["Stroke_Death_Rate_Per_100000",]

# To identify multicollinearity
eigenvalues <- eigen(cor_matrix)$values
if(any(eigenvalues < 0.01)){
  print("Possible multicollinearity detected")
}



