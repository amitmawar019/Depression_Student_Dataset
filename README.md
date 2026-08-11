# 📊 Student Depression Data Analysis Dashboard

## 📌 Project Overview

This project analyzes a Student Depression dataset to identify patterns and relationships between academic pressure, study satisfaction, sleep duration, study hours, financial stress, dietary habits, family history of mental illness, and depression among students.

The project demonstrates an end-to-end data analytics workflow using:

- SQL Server for data cleaning and transformation
- Tableau for data visualization and dashboard development
- CSV dataset as the source data

The objective is to transform raw student data into meaningful insights through data preparation, exploratory analysis, and interactive visualization.

---

## 🎯 Objectives

The main objectives of this project are:

- Clean and transform the raw student dataset using SQL.
- Analyze student demographic and academic characteristics.
- Examine the relationship between academic pressure and student outcomes.
- Analyze study satisfaction and study hours.
- Study the relationship between sleep duration and student count.
- Analyze financial stress among students.
- Explore family history of mental illness.
- Analyze depression-related patterns using Tableau dashboards.
- Build an interactive dashboard for easy interpretation of the data.

---

## 🗂️ Dataset

The dataset contains information about students and several factors that may be associated with their academic and mental well-being.

### Dataset Details

- Records: 502 students
- Original Features: 11

The raw dataset was processed using SQL Server.
# 🧹 Data Cleaning & Transformation

--The raw dataset was processed and transformed using **SQL Server** before being connected to Tableau. The following steps were performed to prepare the dataset for analysis and visualization.

--## 1. Database Creation

--A dedicated SQL database was created for the project.

```sql
CREATE DATABASE [Tableau Project 1];

USE [Tableau Project 1];
--2. Data Exploration

--The complete dataset was initially inspected to understand its structure, columns, and available records.

SELECT *
FROM [dbo].[Depression+Student+Dataset];
--3. Gender Standardization

--Gender values were standardized to maintain consistent categorical values. Female was converted to F, while male was converted to M.

UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'F'
WHERE Gender = 'Female';

UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'M'
WHERE Gender = 'male';
--4. Age Group Creation

--A new derived column, Age_Group, was created to categorize students into different age ranges.

ALTER TABLE [dbo].[Depression+Student+Dataset]
ADD Age_Group VARCHAR(MAX);

--The age groups were assigned using conditional logic:

A1: 18–24 years
A2: 25–30 years
A3: Other age groups
UPDATE [dbo].[Depression+Student+Dataset]
SET Age_Group =
CASE
    WHEN Age BETWEEN 18 AND 24 THEN 'A1'
    WHEN Age BETWEEN 25 AND 30 THEN 'A2'
    ELSE 'A3'
END;
--5. Data Distribution Analysis

--SQL GROUP BY queries were used to understand the distribution of students across important categorical and numerical variables, including:

--Academic Pressure
--Study Satisfaction
--Sleep Duration
--Dietary Habits
--Suicidal Thoughts
--Study Hours
--Financial Stress
--Family History of Mental Illness
--Depression
--Age Groups

--For example, Academic Pressure was analyzed using:

SELECT Academic_Pressure, COUNT(*) AS Student_Count
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Academic_Pressure;

--Similar aggregation queries were performed for the other variables to support exploratory data analysis.

--6. Index Column Creation

--An identity-based Index_Column was added to provide a unique sequential identifier for each record.

ALTER TABLE [dbo].[Depression+Student+Dataset]
ADD Index_Column INT IDENTITY(1,1);
--7. Depression Category Standardization

--The Depression column was converted from its original numeric representation into a readable categorical format.

--First, the column data type was changed to VARCHAR:

ALTER TABLE [dbo].[Depression+Student+Dataset]
ALTER COLUMN Depression VARCHAR(MAX);

--The values were then converted as follows:

--0 → NO
--1 → YES
UPDATE [dbo].[Depression+Student+Dataset]
SET Depression = 'NO'
WHERE Depression = '0';


📊 Tableau Dashboard

The cleaned dataset was connected to Tableau to create an interactive dashboard.

Dashboard Components
1. Sleep Duration vs Student Count

Visualizes the number of students across different sleep-duration categories.

2. Study Hours vs Student Count

Shows the distribution of students according to their study hours.

3. Study Satisfaction vs Student Count

Compares student counts across different study satisfaction levels.

4. Academic Pressure vs Student Count

Visualizes the distribution of students across academic pressure levels.

5. Financial Stress vs Student Count

Shows the distribution of students according to financial stress levels.

📈 Key Analytical Areas

The dashboard focuses on understanding:

Academic pressure among students
Study satisfaction
Study behavior
Sleep patterns
Financial stress
Family history of mental illness
Depression distribution
Demographic patterns

The dashboard allows users to visually compare these factors and identify patterns in the dataset.

💡 Key Insights

Based on the exploratory analysis, the dashboard can be used to identify:

Distribution of students across different sleep-duration categories.
Variation in study hours among students.
Differences in study satisfaction levels.
Distribution of academic pressure levels.
Variation in financial stress levels.
Relationship between student lifestyle and depression-related outcomes.
Potential patterns involving family history and depression.
UPDATE [dbo].[Depression+Student+Dataset]
SET Depression = 'YES'
WHERE Depression = '1';

