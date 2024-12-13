# Sales-Data-Warehouse

# main Purpose

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


