training.data.raw <- read.csv(file = "../training.csv", header = TRUE, na.strings=c(""))

# sapply(training.data.raw,function(x) sum(is.na(x)))


# sapply(training.data.raw, function(x) length(unique(x)))

# Only one currency and one country code 
# Remove country code and currency code
training.data.raw <- training.data.raw %>% select(-CurrencyCode,-CountryCode)

training <- training.data.raw[1:66963,]
validation <- training.data.raw[66964:95662,]

min <- min(year((training.data.1$TransactionStartTime)))
max <- max(year(training.data.1$TransactionStartTime))

a <- training.data.1[255:400,"TransactionStartTime"] %>% as.data.frame()

ymd_hms(b)

round(2.34, digits = 0)    
