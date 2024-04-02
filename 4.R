# Create a matrix
matrix_data <- matrix(1:9, nrow = 3)

# Use apply() to calculate the sum of elements in each column
column_sums <- apply(matrix_data, 2, sum)

# Print the column sums
print(column_sums)
