# COVID19Analysis
This project involves exploration and visualization of worldwide COVID-19 data from Jan 2020 till May 2024 using **Microsoft SQL Server and Tableau**, respectively. The data exploration involves leveraging various SQL techniques and functionalities to gain insights and perform analysis on COVID-19 historical data. Some of the essential insights have been showcased using the data visualisation tools available in Tableau.

**'Covid Deaths.xlsx'** and **'Covid Vaccinations.xlsx'** files contains the data used for analysis.

The **'Data Exploration Queries.sql'** in this repository leverages the following SQL techniques:

* **Joins**: Combining data from multiple tables to analyze COVID-19 cases, deaths, and vaccination data collectively.
* **CTEs (Common Table Expressions)**: Utilizing CTEs to create temporary result sets for complex queries and improving code readability.
* **Window Functions**: Employing window functions to perform rolling calculations and obtain cumulative values over a specific window or partition.
* **Aggregate Functions**: Utilizing aggregate functions like SUM, MAX, and COUNT to calculate total cases, total deaths, and other statistics.
* **Creating Views**: Creating views to store reusable queries and simplify complex data retrieval operations.
* *Converting Data Types*: Handling data type conversions to ensure compatibility and accurate calculations

**'Queries For Visualization.sql'** contains the SQL queries for the insights that have been visualized using Tableau. The repository contains the Excel files for these insights of Covid Deaths including Global Numbers, Death Count by Continent and Country, Percent Population Infected by Country over time.

You can view the Tableau Dashboard for the COVID-19 Analysis [Here](https://public.tableau.com/app/profile/riya.shah5410/viz/COVID19Analysis_17193058066240/Dashboard).
