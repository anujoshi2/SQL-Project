# Portfolio Project
## San Diego Housing Market Trend
### Table of contents
* ## Introduction
Simple project to evaluate the current housing trend based on total number of houses listed and median price in San Diego from 2016 till 2021.
* ## Scope
 To analyze and visualize the real estate market in San Diego on single family residence over a period of time.
* ## Technologies Used
- Excel
- SQL Server
- Tableau
- Microsoft Powerpoint
* ## Procedure 
- Extracted CSV file data from public dataset and extracted into excel file.
- Cleaned data by filtering and sorting, manipulated data with proper data types for analysing in SQL.
- Created 'PortfolioProject' database in SQL Server and created and uploaded data into county and state tables.
* ## Analysis
- Checked data integrity for uniqueness.
- Analyzed the state table based on the total number of houses listed to check the state with maximum and average number of houses listed.
- Selected and grouped on the California state to check the results based on all attributes. 
- Joined the tables State and County using cross join to analyze the percentage of houses listed in San Diego county in the year 2021. 
* ## Share/Visualization
Imported the SQL file into Tableau to visualize the trend and forecast of the San Diego housing trend based on the total houses listed and median price from 2016 to 2021.
* ## SQL Output
- Florida has the maximum number of houses listed in the year 2018.
- California had maximum number of houses listed in the year 2017.
- Average houses listed in CA for the year 2021 is 100122.
- San diego county had maximum number of houses listed in the year 2019 after joining the tables and the highest median price for houses listed was in the year 2021.
- Overall in the year 2021 there is 12% of total houses listed in the month of July in san diego.
* ## Tableau Output
- The average number of houses listed and median price in San Diego for the year 2021 is more compared with previous years. 
- The trend line for average total number of houses listed in San Diego shows 70% variation compared to previous year based on r-square value and the probablity p-value which is <=0.05 reveals that there is linear increase in the total houses listed.
- The trend line for average median price for San Diego shows 80% variation compared to previous year based on r-square value and the probablity p-value reveals there is linear increase in median price.
- Based on the estimated forcast the average total number of houses listed in San Diego is less but the average median price has increased for the year 2021.
* ## Source
The data was collected from Realtor public dataset. 


