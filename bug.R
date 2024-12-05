```R
# This code attempts to subset a data frame using a character vector
# of column names, but it fails due to a subtle error in how the column
# names are referenced.

df <- data.frame(col1 = c(1, 2, 3), col2 = c(4, 5, 6), col3 = c(7, 8, 9))

# Incorrect subsetting
cols_to_select <- c("col1", "col4")
subset_df <- df[, cols_to_select]

print(subset_df)
```