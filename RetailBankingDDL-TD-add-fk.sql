/* Add constraints to tables after load
*/

ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Group_0 
ADD FOREIGN KEY (FK_5Group)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Five_Group_1
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Group_0 
ADD FOREIGN KEY (FK_10Group)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Ten_Group_1
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_0 
ADD FOREIGN KEY (FK_Month)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_1
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_1 
ADD FOREIGN KEY (FK_Quarter)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_2
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Date_2 
ADD FOREIGN KEY (FK_Year)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Year
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_0 
ADD FOREIGN KEY (FK_Month)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_1
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_1 
ADD FOREIGN KEY (FK_Quarter)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_2
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Date_2 
ADD FOREIGN KEY (FK_Year)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cal_Last_Tran_Year
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_0 
ADD FOREIGN KEY (FK_Month)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_1
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_1 
ADD FOREIGN KEY (FK_Quarter)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_2
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Date_2 
ADD FOREIGN KEY (FK_Year)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Year
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_0 
ADD FOREIGN KEY (FK_Month)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_1
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_1 
ADD FOREIGN KEY (FK_Quarter)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_2
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Date_2 
ADD FOREIGN KEY (FK_Year)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Fin_Last_Tran_Year
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_0 
ADD FOREIGN KEY (FK_SSD)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_1
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_1 
ADD FOREIGN KEY (FK_SD)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_2
(Code) 
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_2  
ADD FOREIGN KEY (FK_State)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_State
(Code) 
;

ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Account 
ADD FOREIGN KEY (FK_Cust_Key)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.F_Customer
(PK_Cust_Key)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Account 
ADD FOREIGN KEY (Product_Type)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Product_Type
(Code)
;

ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Customer 
ADD FOREIGN KEY (Age)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Age
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Customer
ADD FOREIGN KEY (Age_Group)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Age_Group
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Customer
ADD FOREIGN KEY (Area)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Geography_0
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Customer
ADD FOREIGN KEY (Cust_Mail_Ind)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Cust_Mail_Indicator
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Customer
ADD FOREIGN KEY (Marital_Status)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Marital_Status
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Customer
ADD FOREIGN KEY (Occupation)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Occupation
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Customer
ADD FOREIGN KEY (Gender)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.C_Gender
(Code)
;
ALTER TABLE PRD_ADS_HWD_RETAILBANKING_DB.F_Customer
ADD FOREIGN KEY (Company)
    REFERENCES
WITH NO CHECK OPTION PRD_ADS_HWD_RETAILBANKING_DB.Company
(Code)
;
