# R Subsetting Bug
This repository demonstrates a subtle bug in R related to subsetting data frames using character vectors containing non-existent column names. The code attempts to select columns "col1" and "col4" from a data frame that only contains columns "col1", "col2", and "col3".  Instead of throwing an error, R silently ignores "col4", which can lead to unexpected results and difficult-to-debug errors in larger projects.

The bug.R file contains the buggy code, and the bugSolution.R file provides a corrected version that handles non-existent column names more gracefully.