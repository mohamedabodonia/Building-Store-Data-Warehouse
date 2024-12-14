USE master
go

IF exists(select * from sys.databases where name='EO_AdventureWorksDW2014') 
  DROP DATABASE EO_AdventureWorksDW2014;

CREATE DATABASE EO_AdventureWorksDW2014
go 