# Stores-Data-Warehouse

# overview
This project demonstrates the complete lifecycle of building a data warehouse, including ETL processes, data modeling, and visualization.    
The solution was developed using SQL Server for database management, SSIS for data extraction, transformation, and loading (ETL), and Power BI for data visualization. 

Key Highlights:
Database Restoration and Setup:

Restored source database files into SQL Server and prepared the environment for warehouse development.
Data Warehouse Design:

Designed and created the structure of the data warehouse, including Fact and Dimension tables:
Dimension Tables: Dim-Product, Dim-Customer, Dim-Territory, Dim-Date.
Fact Table: Fact-Sales.
Included Slowly Changing Dimension (SCD) attributes (Start-Date, End-Date, Is-Current) for tracking historical changes.
**ETL Processes:**

Built SSIS packages to load data into Dimension tables and implemented SCD logic for change tracking.
Created separate ETL packages for each table: Dim-Product, Dim-Customer, Dim-Territory, Dim-Date, and Fact-Sales.

**Data Visualization:**

Developed interactive dashboards using Power BI to visualize insights from the Fact-Sales table, enabling data-driven decision-making.  
This project highlights proficiency in SQL Server, ETL with SSIS, Data Warehousing concepts, and Power BI visualization to deliver end-to-end business intelligence solutions.  


data Warehous main Purpose is to collect Data from multiple sources to help in creating reports from all sources.    

# Tools used in projects  
Sql server DB.  
Sql Server Integration Service.

# Data Warehouse Diagram

<img src="https://github.com/mohamedabodonia/Building-Sales-Data-Warehouse/blob/main/Diagram.jpg?raw=true">

# Project Workflow 

1-Download source files of data base and restore this file in Sql server DB.  
2- Create the structure of Data Warehouse.  
3-create tables(Fact&Dimesion) required in data warehouse with coulmns suitable for buisiness requirements.  
  *determining the datatype of each coulmns in table.  
  *create slowly changing dimension (SCD) coulmns(start-date,end-date,Is-current)for each table and foreign-keys.   
  -Dimension Tables:Dim-Product,Dim-Customer,Dim-Territory,Dim-Date.  
  -Fact Table: Fact-Sales.  
4-create package on ssis for dim-Product table (ETL) to load data on Dim-product table & Dim-customer table.  

<img src="https://github.com/mohamedabodonia/Building-Sales-Data-Warehouse/blob/main/dim-product.jpeg?raw=true">

5-create slowly changing dimension for Dim-product table & Dim-customer table to audit(track) changes on rows.
<img src="https://github.com/mohamedabodonia/Building-Sales-Data-Warehouse/blob/main/SCD.jpeg?raw=true">

6- creat ssis package for dim-territory table.

<img src="https://github.com/mohamedabodonia/Building-Sales-Data-Warehouse/blob/main/dim-terrirtary.jpeg?raw=true">

7-creat ssis package for dim-date table.

<img src="https://github.com/mohamedabodonia/Building-Sales-Data-Warehouse/blob/main/dim-date.jpeg?raw=true">

8-

9- create a dashboard for insightful visualizations supporting business requirements.

<img src="https://github.com/mohamedabodonia/Building-Store-Data-Warehouse/blob/main/dashboard.jpeg?raw=true">


