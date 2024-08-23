

#Air Quality Index (AQI) Dataset Report



# Load libraries

library(ggplot2)
library(dplyr)
library(rmarkdown)
library(summarytools)
library(DataExplorer)


# Load dataset
df <- read.csv("C:/Users/Vishnu/Downloads/archive(1)/global air pollution dataset.csv")


# View the structure of the dataset
str(df)

# Get summary statistics of the dataset
summary(df)

# Check for missing values
sum(is.na(df))


# Renaming columns for easier use 
df <- df %>% 
  rename(CO = CO.AQI.Value, 
         Ozone = Ozone.AQI.Value, 
         NO2 = NO2.AQI.Value, 
         PM2.5 = PM2.5.AQI.Value)

# Remove rows with missing data
df <- df %>% filter(complete.cases(.))





# Univariate Analysis

# 1. Distribution of AQI Values
ggplot(df, aes(x = AQI.Value)) +
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black") +
  labs(title = "Distribution of AQI Values", x = "AQI Value", y = "Frequency")

# 2. Distribution of AQI Categories
ggplot(df, aes(x = AQI.Category, fill = AQI.Category)) +
  geom_bar() +
  labs(title = "Distribution of AQI Categories", x = "AQI Category", y = "Count") +
  scale_fill_manual(values = c("Good" = "green", "Moderate" = "yellow", "Unhealthy for Sensitive Groups" = "red"))

# Bivariate Analysis

# 3. Scatter Plot of CO vs AQI
ggplot(df, aes(x = CO, y = AQI.Value)) +
  geom_point(color = "darkblue", alpha = 0.5) +
  labs(title = "Scatter Plot of CO vs AQI", x = "CO AQI Value", y = "AQI Value")

# 4. Boxplot of AQI Values by Country
ggplot(df, aes(x = Country, y = AQI.Value, fill = Country)) +
  geom_boxplot() +
  labs(title = "AQI Values by Country", x = "Country", y = "AQI Value") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# Multivariate Analysis

# 5. AQI Category Distribution by Country
ggplot(df, aes(x = Country, fill = AQI.Category)) +
  geom_bar(position = "fill") +
  labs(title = "AQI Category Distribution by Country", x = "Country", y = "Proportion") +
  scale_fill_manual(values = c("Good" = "green", "Moderate" = "yellow", "Unhealthy for Sensitive Groups" = "red")) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# 6. AQI Value by City and Country
ggplot(df, aes(x = reorder(City, AQI.Value), y = AQI.Value, fill = Country)) +
  geom_bar(stat = "identity") +
  labs(title = "AQI Values by City", x = "City", y = "AQI Value") +
  coord_flip()

# 7. Top 10 Most Polluted Cities
top_10_cities <- df %>%
  arrange(desc(AQI.Value)) %>%
  head(10)

ggplot(top_10_cities, aes(x = reorder(City, AQI.Value), y = AQI.Value, fill = City)) +
  geom_bar(stat = "identity") +
  labs(title = "Top 10 Most Polluted Cities", x = "City", y = "AQI Value") +
  coord_flip()

# 8. Boxplot of AQI Values by AQI Category
ggplot(df, aes(x = AQI.Category, y = AQI.Value, fill = AQI.Category)) +
  geom_boxplot() +
  labs(title = "AQI Values by AQI Category", x = "AQI Category", y = "AQI Value")

# 9. Scatter Plot of Ozone vs AQI
ggplot(df, aes(x = Ozone, y = AQI.Value)) +
  geom_point(color = "purple", alpha = 0.5) +
  labs(title = "Scatter Plot of Ozone vs AQI", x = "Ozone AQI Value", y = "AQI Value")

# 10. Scatter Plot of NO2 vs AQI
ggplot(df, aes(x = NO2, y = AQI.Value)) +
  geom_point(color = "orange", alpha = 0.5) +
  labs(title = "Scatter Plot of NO2 vs AQI", x = "NO2 AQI Value", y = "AQI Value")

#Generate report
create_report(df, 
              output_file = "eda_report.html", 
              report_title = "Air Quality Index (AQI) Dataset Report")

