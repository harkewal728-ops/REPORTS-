-- Creating a database 
SET sql_safe_updates = 0;
CREATE DATABASE IF NOT EXISTS ccdb;
USE ccdb;

-- Truncate the table to remove any existing rows
TRUNCATE TABLE cc_detail;

-- Creating the credit card detail table 
CREATE TABLE IF NOT EXISTS cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Vol INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- Creating the customer detail table 
CREATE TABLE IF NOT EXISTS cust_detail (
    Client_Num INT,
    Customer_Age INT, 
    Gender TEXT, 
    Dependent_Count INT,
    Education_level VARCHAR(50),
    Martial_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT, 
    Cust_Satisfaction_Score INT
);

-- Load credit card details
LOAD DATA LOCAL INFILE 'C:/Users/harke/Downloads/credit_card.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load customer details
LOAD DATA LOCAL INFILE 'C:\Users\harke\Downloads\customer.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
 

SELECT *  FROM cust_detail;
SELECT *  FROM cc_detail;