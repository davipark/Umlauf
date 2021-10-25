# Read in the data
x <- scan("bottemperature_list.txt", what="", sep=",")
y <- strsplit(x, "[[:space:]]+")
# Extract the first vector element and set it as the list element name
names(y) <- sapply(y, `[[`, 1)
#names(y) <- sapply(y, function(x) x[[1]]) # same as above
# Remove the first vector element from each list element
y <- lapply(y, `[`, -1)
#y <- lapply(y, function(x) x[-1]) # same as above
x <- as.numeric(x)
summary(x)
