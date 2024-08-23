
# Exploratory Data Analysis (EDA) on Air Quality Index (AQI) Dataset

## Project Overview

This project involves performing Exploratory Data Analysis (EDA) on a dataset related to Air Quality Index (AQI). The goal is to uncover insights and patterns within the data, visualize distributions, and understand the relationships between various pollutants and AQI values.

## Repository Structure

- **`EDA USING R.R`**: This R script contains the code used for conducting the Exploratory Data Analysis on the AQI dataset. It includes data cleaning, univariate, bivariate, and multivariate analyses, and visualization of key insights.

- **`EDA USING R.pptx`**: A presentation summarizing the findings and visualizations from the EDA. This presentation can be used to convey the results to stakeholders or in a report format.

- **`eda_report.html`**: An HTML report generated from the EDA script using the `DataExplorer` package in R. This report includes all the visualizations and summary statistics automatically compiled for easy review.

- **`Dataset/global air pollution dataset.csv`**: The dataset used in this analysis, containing AQI values for various pollutants across different cities and countries globally.

## Analysis Highlights

1. **Univariate Analysis**:
   - Distribution of AQI values.
   - Distribution of AQI categories.

2. **Bivariate Analysis**:
   - Scatter plots of AQI values against CO, Ozone, and NO2 AQI values.
   - Boxplots of AQI values by country.

3. **Multivariate Analysis**:
   - AQI category distribution by country.
   - Top 10 most polluted cities based on AQI values.

## How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   ```
2. Install necessary R packages:
   ```r
   install.packages(c("ggplot2", "dplyr", "rmarkdown", "summarytools", "DataExplorer"))
   ```
3. Load the R script (`EDA USING R.R`) into your R environment (e.g., RStudio) and run it to reproduce the analysis and generate the report.

## Findings

- The analysis highlights significant variation in AQI values across different cities and countries.
- Certain cities are identified as having particularly high pollution levels, which could be of interest to policymakers and environmental scientists.
- The relationships between different pollutants and overall AQI values were explored to understand their impact on air quality.

## Future Work

Further analysis could include:
- Time-series analysis to explore trends over time.
- Investigating the impact of specific events or policies on air quality.
- Comparing air quality between urban and rural areas.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

