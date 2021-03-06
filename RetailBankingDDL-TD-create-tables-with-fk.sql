/*
Teradata DDL for Retail banking
This is the final form of the Tables
They cannot be deployed like this as tables with referential integrity cannot be fast loaded
*/

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Week (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_WeekDay (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Month (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Quarter (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.Company (
  Code VARCHAR(20) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Marital_Status (
  Code CHAR(2) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Occupation (
  Code CHAR(2) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Product_Type (
  Code CHAR(1) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Gender (
  Code CHAR(2) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Age (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Five_Group_1 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Ten_Group_1 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Group_0 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_5Group INTEGER NOT NULL
  , FK_10Group INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_5Group)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Five_Group_1 (Code)
  , FOREIGN KEY (FK_10Group)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Ten_Group_1 (Code)
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Year (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_2 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Year INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Year)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Year (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_1 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Quarter INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Quarter)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_2 (Code) 
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_0 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Month INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Month)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_1 (Code) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Year (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_2 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Year INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Year)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Year (Code) 
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_1 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Quarter INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Quarter)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_2 (Code) 
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_0 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Month INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Month)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_1 (Code) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cust_Mail_Indicator (
  Code CHAR(3) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_DayOfMonth (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Year (
  Code CHAR(8) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_2 (
  Code CHAR(9) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Year CHAR(8) NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Year)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Year (Code) 
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_1 (
  Code CHAR(10) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Quarter CHAR(9) NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Quarter)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_2 (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_0 (
  Code CHAR(8) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Month CHAR(10) NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Month)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_1 (Code) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Year (
  Code CHAR(8) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_2 (
  Code CHAR(9) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Year CHAR(8) NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Year)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Year (Code) 
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_1 (
  Code CHAR(10) NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Quarter CHAR(9) NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Quarter)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_2 (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_0 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_Month CHAR(10) NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_Month)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_1 (Code) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_State (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , PRIMARY KEY (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_2 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_State INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_State)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_State (Code) 
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_1 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_SD INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_SD)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_2 (Code) 
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_0 (
  Code INTEGER NOT NULL
  , Name VARCHAR(100) NOT NULL
  , FK_SSD INTEGER NOT NULL
  , PRIMARY KEY (Code)
  , FOREIGN KEY (FK_SSD)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_1 (Code) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Account (
  PK_Acc_Key INTEGER NOT NULL 
  , Acc_Open_Date DATE 
  , Acc_Open_Date_Cal INTEGER 
  , Acc_Open_Date_Fin INTEGER 
  , Acc_Open_Date_Quarter INTEGER 
  , Acc_Open_Date_Month INTEGER 
  , Acc_Open_Date_Week INTEGER 
  , Acc_Open_Date_DayofMonth INTEGER 
  , Acc_Open_Date_DayofWeek INTEGER 
  , Acc_Profit FLOAT 
  , Avg_Acc_Balance FLOAT 
  , Last_Transaction_Date DATE 
  , Last_Transaction_Date_Cal INTEGER 
  , Last_Transaction_Date_Fin INTEGER 
  , Last_Transaction_Date_Quarter INTEGER 
  , Last_Transaction_Date_Month INTEGER 
  , Last_Transaction_Date_Week INTEGER 
  , Last_Transaction_Date_DayofMonth INTEGER 
  , Last_Transaction_Date_DayofWeek INTEGER 
  , Product_Type CHAR(1) 
  , FK_Cust_Key INTEGER NOT NULL 
  , PRIMARY KEY (PK_Acc_Key)
  , FOREIGN KEY (FK_Cust_Key)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.F_Customer (PK_Cust_Key)
  , FOREIGN KEY (Product_Type)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Product_Type (Code)
)
;
CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Customer (
  PK_Cust_Key INTEGER NOT NULL 
  , Age INTEGER NOT NULL 
  , Age_Group INTEGER NOT NULL 
  , Area INTEGER NOT NULL 
  , Cust_Mail_Ind CHAR(3) NOT NULL 
  , Cust_Open_Date DATE 
  , Cust_Open_Date_Cal INTEGER NOT NULL 
  , Cust_Open_Date_Fin INTEGER NOT NULL 
  , Cust_Open_Date_Quarter INTEGER NOT NULL 
  , Cust_Open_Date_Month INTEGER NOT NULL 
  , Cust_Open_Date_Week INTEGER 
  , Cust_Open_Date_DayofMonth INTEGER 
  , Cust_Open_Date_DayofWeek INTEGER 
  , Cust_Profit FLOAT 
  , Marital_Status CHAR(2) NOT NULL 
  , Occupation CHAR(2) NOT NULL 
  , Gender CHAR(2) NOT NULL 
  , Birth_Date DATE 
  , Company VARCHAR(20) 
  , X_Coord VARCHAR(50) 
  , Y_Coord VARCHAR(50) 
  , PRIMARY KEY (PK_Cust_Key)
  , FOREIGN KEY (Age)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Age (Code)
  , FOREIGN KEY (Age_Group)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Group_0 (Code)
  , FOREIGN KEY (Area)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_0 (Code)
  , FOREIGN KEY (Cust_Mail_Ind)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cust_Mail_Indicator (Code)
  , FOREIGN KEY (Marital_Status)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Marital_Status (Code)
  , FOREIGN KEY (Occupation)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Occupation (Code)
  , FOREIGN KEY (Gender)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Gender (Code)
  , FOREIGN KEY (Company)
    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.Company (Code)
)
;
