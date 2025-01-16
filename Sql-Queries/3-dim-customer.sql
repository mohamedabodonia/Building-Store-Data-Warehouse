USE EO_AdventureWorksDW2014

go



CREATE TABLE dim_customer
  (
     customer_key       INT NOT NULL IDENTITY(1, 1),
     customer_id        INT NOT NULL,
     customer_name      NVARCHAR(150),
     address1           NVARCHAR(100),
     address2           NVARCHAR(100),
     city               NVARCHAR(30),
     phone              NVARCHAR(25),
     -- birth_date date,
     -- marital_status char(10),
     -- gender char(1),
     -- yearly_income money,
     -- education varchar(50),
     source_system_code TINYINT NOT NULL,
     start_date         DATETIME NOT NULL DEFAULT (Getdate()),
     end_date           DATETIME NULL,
     is_current         TINYINT NOT NULL DEFAULT (1),
     CONSTRAINT pk_dim_customer PRIMARY KEY CLUSTERED (customer_key)
  );

-- Create Foreign Keys

  ALTER TABLE fact_sales
    ADD CONSTRAINT fk_fact_sales_dim_customer FOREIGN KEY (customer_key)
    REFERENCES dim_customer(customer_key);



SET IDENTITY_INSERT dim_customer OFF

-- Create Indexes
           
CREATE INDEX dim_customer_customer_id
  ON dim_customer(customer_id);



CREATE INDEX dim_customer_city
  ON dim_customer(city); 

  
