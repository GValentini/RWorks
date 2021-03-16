### Reading Text Files in R (Cognitive Class R101 Course)

setwd("./Data_Camp/Bag of Words")
# 1 - Reading lines of text
# we get a character vector, with one item for each of the lines in the file
mytext <- readLines("Example_Text.txt")

# 2 - Counting up the number of lines in the vector
length(mytext)

# 3 - Counting up the number of characters in each line
nchar(mytext)

# 4 - Obtaining the size of the file
file.size("Example_Text.txt")

# 5 - Reading a text file by word rather than by line
mytextw <- scan(file = "Example_Text.txt", "")

### String Operations
# 1 - Replacing a set of characters in a string
newtext <- chartr(old = " ", new = "-", x = mytext[2])
newtext

# 2 - Breaking apart a string by using some kind of expression
mywords <- strsplit(x = mytext[2], split = " ")
mywords <- unlist(mywords)
sort(mywords)

# 3 - Concatenating the elements of a character vector
paste(mywords, collapse = " ")

# 4 - Isolating a specific portion of a string
substr(mytext[3], start = 5, stop = 10)
# counting back
library(stringr)
str_sub(string = mytext[2], start = -23, end = -1)

### The Date Format
dates_int <- c(-150040, 124020)
# Convert an integer (# of seconds from the 'origin') into a Date object
dates_posix <- as.POSIXct(x = dates_int, origin = "1970-01-01")
dates_date <- as.Date(x = dates_posix, format = "%Y-%m-%d")
dates_date

# Convert a string into a Date object
dates_string <- c("2020-11-14", "2019-05-30")
as.Date(x = dates_string)

