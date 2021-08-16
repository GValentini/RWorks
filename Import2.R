### Examples from "Intermediate Importing Data in R" Data Camp practice

# The tweater database is loaded as con. Get the first observation from the users table.
usersdf <- dbReadTable(con, "users")
usersdf[1,]

# The tweater database is loaded as con. From the comments table get only the messages shorter than 7 characters.
short <- dbGetQuery(con, "SELECT message FROM comments WHERE CHAR_LENGTH(message) < 7")
short

# The tweater database is loaded as con. Get only the first two users.
result <- dbSendQuery(con, "SELECT * FROM users")
dbFetch(result, n = 2)
dbClearResult(result)

# wine_json is a JSON object in your R workspace. Convert it into an R list.
library(jsonlite)
wine <- fromJSON(wine_json)
wine[1]

# Import the SPSS file intl.sav to an R data frame. Be careful! foreign will return a list unless it's stated differently. 
library(foreign)
data <- read.spss("intl.sav", to.data.frame = TRUE)
data[1,1:3]

# Retrieve and load the wine.RData file from the web. We have stored its web address as url_rdata.
download.file(url_data, "myFile.Rdata")
load("myFile.Rdata")
head(wine[,1:3])

# The function read_excel cannot read the file 'latitude.xls' from a web address, which is stored at your environment as url. Solve the problem.
library (readxl)
download.file(url, destfile = "local.xls")
data <- read_excel("local.xls")
data[3,]
