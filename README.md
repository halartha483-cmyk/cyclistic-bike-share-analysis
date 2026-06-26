Cyclistic Bike-Share Analysis
Project Overview

This project was completed as part of the Google Data Analytics Professional Certificate Capstone.

The objective was to analyze historical Cyclistic bike-share trip data to understand how annual members and casual riders use the service differently. Based on these insights, business recommendations were developed to support strategies for converting casual riders into annual members.

Business Task

Cyclistic's marketing team wants to increase annual memberships.

The goal of this analysis is to answer the following business question:

How do annual members and casual riders use Cyclistic bikes differently?

Tools Used
SQL (Google BigQuery)
Tableau
Google BigQuery
Google Data Analytics methodology
Dataset
Cyclistic historical trip data
Source: Divvy Bike Share
Data provided for educational purposes through the Google Data Analytics Capstone
Data Cleaning

The following cleaning and transformation steps were performed in BigQuery:

Combined multiple monthly datasets into a single analytical table
Removed invalid ride records
Removed missing station information
Removed records with missing rider type
Created ride duration in minutes
Extracted weekday from ride date
Extracted month from ride date
Analysis

The analysis focused on comparing annual members and casual riders across several dimensions:

Total ride count
Average ride duration
Day-of-week riding behavior
Bike type preference
Monthly riding trends
Key Findings
1. Members Ride More Frequently

Annual members completed approximately 322,000 rides, compared with approximately 98,000 rides by casual riders.

2. Casual Riders Take Longer Trips

Average ride duration:

Member: 9.98 minutes
Casual: 16.80 minutes

This suggests members primarily use bikes for transportation or commuting, while casual riders are more likely to use bikes for leisure.

3. Riding Patterns Differ by Day

Members rode consistently throughout weekdays.

Casual riders showed clear increases on Fridays and Saturdays, indicating recreational usage.

4. Bike Preferences

Members frequently used both classic and electric bikes.

Casual riders showed slightly higher electric bike usage but spent considerably longer riding classic bikes.

5. Seasonal Trend

Ride activity increased from January through March for both rider groups, suggesting seasonal demand growth.

Business Recommendations

Based on the analysis, Cyclistic could consider:

Promoting annual memberships during weekends when casual rider activity peaks.
Offering discounts to frequent casual riders.
Developing commuter-focused membership campaigns.
Marketing the long-term cost savings of annual memberships.
Running seasonal membership promotions before peak riding months.
Dashboard

The Tableau dashboard summarizes the major findings using interactive visualizations.

Included visualizations:

Total Ride Count
Average Ride Duration
Day of Week Usage
Bike Type Preference

Skills Demonstrated
SQL
Data Cleaning
Data Transformation
Data Analysis
Business Intelligence
Tableau Dashboard Development
Data Storytelling
Business Recommendations
