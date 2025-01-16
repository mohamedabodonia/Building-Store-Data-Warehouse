USE EO_AdventureWorksDW2014

go


-- Drop and create the table
IF EXISTS (SELECT *
           FROM   sys.objects
           WHERE  NAME = 'dim_product'
                  AND type = 'U')
  DROP TABLE dim_product

go

CREATE TABLE dim_product
  (
     product_key         INT NOT NULL IDENTITY(1, 1),-- surrogate key
     product_id          INT NOT NULL,--alternate key, business key
     product_name        NVARCHAR(50),
     Product_description NVARCHAR(400),
     product_subcategory NVARCHAR(50),
     product_category    NVARCHAR(50),
     color               NVARCHAR(15),
     model_name          NVARCHAR(50),
     reorder_point       SMALLINT,
     standard_cost       MONEY,
     
	 -- Metadata
     source_system_code  TINYINT NOT NULL,
     -- SCD
     start_date          DATETIME NOT NULL DEFAULT (Getdate()),
     end_date            DATETIME,
     is_current          TINYINT NOT NULL DEFAULT (1),
     CONSTRAINT pk_dim_product PRIMARY KEY CLUSTERED (product_key)
  );


SET IDENTITY_INSERT dim_product OFF

-- create foreign key

    ADD CONSTRAINT fk_fact_sales_dim_product FOREIGN KEY (product_key)
    REFERENCES
    dim_product(product_key);

-- create indexes

CREATE INDEX dim_product_product_id
  ON dim_product(product_id);


CREATE INDEX dim_prodct_product_category
  ON dim_product(product_category); 
