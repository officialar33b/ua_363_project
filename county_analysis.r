library(dplyr)
## File Paths
solar_path <- "./solar_radiation_by_county.csv"
income_path <- "./US Median Household Income by County Final.csv"
education_path <- "./US Population with Bachelor's Degree by County Final.csv"

sunlight_data <- read.csv(solar_path)
print(head(sunlight_data), 10)

income_data <- read.csv(income_path)
print(head(income_data), 10)

education_data <- read.csv(education_path)
print(head(education_data), 10)

## Combine Datasets
combined_data <- sunlight_data %>%
  inner_join(income_data, by = "FIPS") %>%
  inner_join(education_data, by = "FIPS")
print(head(combined_data), 10)
## Correlation
print(colnames(combined_data))

## Convert Dollars to numeric datatype
combined_data$Value..Dollars. <- as.numeric(gsub("[^0-9.]", "", combined_data$Value..Dollars.))

corr_income_sunlight <- cor(combined_data$Value..Dollars., combined_data$GHI, use = "complete.obs")
print(corr_income_sunlight)

corr_income_bachelors <- cor(combined_data$Value..Dollars., combined_data$Value..Percent., use = "complete.obs")
print(corr_income_bachelors)

## Plotting graphs
bachelors <- combined_data$Value..Percent.
sunlight <- combined_data$GHI
income <- combined_data$Value..Dollars.

plot(bachelors, income, type = "p", xlab = expression(bold("Percentage of Bachelor's degree holders")), ylab = expression(bold("Median Household Income")), pch = 1, cex = 1.5, main = "Correlation between Percentage of Bachelors' Degree Holders and Median Household Income by County")
abline(lm(income ~ bachelors), col = "orange")
# png("degree vs income.png", width = 800, height = 600)

plot(sunlight, income, type = "p", xlab = expression(bold("Global Horizontal Irradiation (GHI) (Amount of Sunlight)")), ylab = expression(bold("Median Household Income")), pch = 1, cex = 1.5, main = "Correlation between Sunlight and Median Household Income by County")
abline(lm(income ~ bachelors), col = "orange")
# png("sunlight vs income.png", width = 800, height = 600)

