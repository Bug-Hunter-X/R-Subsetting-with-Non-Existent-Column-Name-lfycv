```R
# This code addresses the bug by explicitly checking if all column names
# exist in the data frame before performing the subsetting operation.

df <- data.frame(col1 = c(1, 2, 3), col2 = c(4, 5, 6), col3 = c(7, 8, 9))

cols_to_select <- c("col1", "col4")

# Check if all columns exist
if (all(cols_to_select %in% names(df))) {
  subset_df <- df[, cols_to_select]
} else {
  #Handle the case where not all columns exist
  missing_cols <- setdiff(cols_to_select, names(df))
  warning(paste("Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
  subset_df <- df[, intersect(cols_to_select, names(df))]
}

print(subset_df)
```