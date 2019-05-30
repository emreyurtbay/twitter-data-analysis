# dbscript
library(RSQLite)

# Create our Database and Connect
dcon <- dbConnect(SQLite(), 
                  dbname = "/Users/emreyurtbay/Documents/Rice/junior/stat405/group2.sqlite")

table <- read.csv(paste0("/Users/emreyurtbay/Documents/Rice/junior/stat405/TweetData.csv"))
dbWriteTable(conn = dcon, name = "florida-8-21", table,
             append = TRUE, row.names = FALSE)

table <- read.csv(paste0("/Users/emreyurtbay/Documents/Rice/junior/stat405/TweetData11_1.csv"))
dbWriteTable(conn = dcon, name = "florida-11-1", table,
             append = TRUE, row.names = FALSE)

table <- read.csv(paste0("/Users/emreyurtbay/Documents/Rice/junior/stat405/TweetData11_5.csv"))
dbWriteTable(conn = dcon, name = "florida-11-5", table,
             append = TRUE, row.names = FALSE)

table <- read.csv(paste0("/Users/emreyurtbay/Documents/Rice/junior/stat405/TweetData11_6.csv"))
dbWriteTable(conn = dcon, name = "florida-11-6", table,
             append = TRUE, row.names = FALSE)

table <- read.csv(paste0("/Users/emreyurtbay/Documents/Rice/junior/stat405/TweetData_10_30.csv"))
dbWriteTable(conn = dcon, name = "florida-10-30", table,
             append = TRUE, row.names = FALSE)

table <- read.csv(paste0("/Users/emreyurtbay/Documents/Rice/junior/stat405/TweetData_10_25.csv"))
dbWriteTable(conn = dcon, name = "florida-10-25", table,
             append = TRUE, row.names = FALSE)

table <- read.csv(paste0("/Users/emreyurtbay/Documents/Rice/junior/stat405/KansasTweetData.csv"))
dbWriteTable(conn = dcon, name = "ks-tweet", table,
             append = TRUE, row.names = FALSE)

dbDisconnect(dcon)
