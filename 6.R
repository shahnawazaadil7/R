# Step 1: Load the required packages
#install.packages("ggplot2")  # Uncomment and run this line if 'ggplot2' is not installed
#install.packages("corrplot") # Uncomment and run this line if 'corrplot' is not installed
library(ggplot2)
library(corrplot)

# Step 2: Load the iris dataset (already available in R)
data(iris)

# Step 3: Calculate the correlation matrix
cor_matrix <- cor(iris[, 1:4])  # Select the numeric columns (excluding the Species column)
print(cor_matrix)
# Step 4: Plot the correlation matrix using corrplot
corrplot(cor_matrix, method = "color")
