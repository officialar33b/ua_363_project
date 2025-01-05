# Title: What affects income more; Eduation or Sunlight?

| By MUHAMMAD AREEB|
|---------------------------------------------------------------------------------|
| Bachelors of Science in Geographic Information Systems & Technology |
| Course: DATA 363 |
| [officialareeb@outlook.com](mailto:officialareeb@outlook.com) |

## Paper
[paper](./What%20affects%20income%20more%20-%20Final%20Report%20(1).pdf)

## SUMMARY
### Description:

This project aims to compare two response variables, sunlight and education level against the explanatory variable—income. For this, three different datasets were collected, namely Global Horizontal Irradiation (GHI), median household income data, and percentage of bachelor’s degree graduates’ data. All of these datasets were collected based on county values for the United States to make a fair comparison.  

### Study Area: 
Continental Unites States

### Data Sources:
| Parameter | Source |
|:---------------:|:-----------:|
| Sunlight (Solar Radiation) | https://globalsolaratlas.info/map |
| Education (Percentage of Bachelor's) | https://hdpulse.nimhd.nih.gov/ |
| Income (Median Household Income) | https://hdpulse.nimhd.nih.gov/ |

### Methods:
The first part, correlation between the variables is calculated, first between sunlight and income, and then between education and income.
The second part, a hypothesis test is performed to check whether the population mean and sample mean for education in the state of Arizona are equal or not.

The cleaning process is shown in [cleaning_stuff](./clean.ipynb) and [spatial_join](./spatial_join.ipynb)
The acutal analysis is shown in [main](./county_analysis) and [hypothesis test](./t_test.r)

### Figures:

## Median Income by County:
![income by county](./Median%20Income%20by%20County.png)

## Percentage of Bachelor's by County:
![education by county](./Percentage%20of%20Bachelor's%20by%20County.png)

## Solar Radiation by County:
![sublight by county](./Solar%20Radiation%20by%20County.png)

## Sample Example
![sample 5000 Arizona](./Random%20Samples%205000.png)

# Results:

## Correlation
`k_sunlight_income = -0.0008`
`k_education_income = 0.73,` 

## Hypothesis Test
## Statistical Analysis Results

| Sample Size (n) | Sample Mean | t-Statistic | p-value | Decision |
|:---------------:|:-----------:|:-----------:|:-------:|:--------:|
| 50 | 24.558 | 1.57 | 0.123 | Accept Ho |
| 100 | 23.057 | 0.88 | 0.381 | Accept Ho |
| 500 | 24.426 | 4.916 | 1.020428e-06 | Reject Ho |
| 5000 | 25.5377 | 16.27 | ~0 | Reject Ho |
