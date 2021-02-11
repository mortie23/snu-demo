## Author: Christopher Mortimer
## Date:   2021-02-10
## Desc:   Load data to Teradata for SuperCHANNEL reg tables

<#
.Description
loader function will load a particular csv file to Teradata.
#>
function loader($filename, $tablename) {
  # File has header row remove before load
  (Get-Content .\retail-banking\$filename | Select-Object -Skip 1) | Set-Content .\retail-banking\$filename.skip
  tdload -f .\retail-banking\$filename.skip -t $tablename -j load.jvar
  # Clean up temp table with no header row 
  Remove-Item .\retail-banking\$filename.skip
}

## Run the loader for all the Registry files
loader __SUPER_CHANNEL__.csv __SUPER_CHANNEL__
loader BINS.csv R_BINS
loader CLASSIFICATIONS.csv R_CLASSIFICATIONS
loader CLEANSING_RULES.csv R_CLEANSING_RULES
loader COLUMN_LABEL.csv R_COLUMN_LABEL
loader COUNT_DEFAULT.csv R_COUNT_DEFAULT
loader DATABASE_LABEL.csv R_DATABASE_LABEL
loader FACTS.csv R_FACTS
loader GROUP.csv R_GROUP
loader MEASURES.csv R_MEASURES
loader TABLE_LABEL.csv R_TABLE_LABEL

## Run the loader for all star schema data files
loader C_Age.csv C_Age 
loader C_Age_Five_Group_1.csv C_Age_Five_Group_1 
loader C_Age_Group_0.csv C_Age_Group_0 
loader C_Age_Ten_Group_1.csv C_Age_Ten_Group_1 
loader C_Cal_Date_0.csv C_Cal_Date_0 
loader C_Cal_Date_1.csv C_Cal_Date_1 
loader C_Cal_Date_2.csv C_Cal_Date_2 
loader C_Cal_Last_Tran_Date_0.csv C_Cal_Last_Tran_Date_0 
loader C_Cal_Last_Tran_Date_1.csv C_Cal_Last_Tran_Date_1 
loader C_Cal_Last_Tran_Date_2.csv C_Cal_Last_Tran_Date_2 
loader C_Cal_Last_Tran_Year.csv C_Cal_Last_Tran_Year 
loader C_Cal_Year.csv C_Cal_Year 
loader C_Cust_Mail_Indicator.csv C_Cust_Mail_Indicator 
loader C_DayOfMonth.csv C_DayOfMonth 
loader C_Fin_Date_0.csv C_Fin_Date_0 
loader C_Fin_Date_1.csv C_Fin_Date_1 
loader C_Fin_Date_2.csv C_Fin_Date_2 
loader C_Fin_Last_Tran_Date_0.csv C_Fin_Last_Tran_Date_0 
loader C_Fin_Last_Tran_Date_1.csv C_Fin_Last_Tran_Date_1 
loader C_Fin_Last_Tran_Date_2.csv C_Fin_Last_Tran_Date_2 
loader C_Fin_Last_Tran_Year.csv C_Fin_Last_Tran_Year 
loader C_Fin_Year.csv C_Fin_Year 
loader C_Gender.csv C_Gender 
loader C_Geography_0.csv C_Geography_0 
loader C_Geography_1.csv C_Geography_1 
loader C_Geography_2.csv C_Geography_2 
loader C_Marital_Status.csv C_Marital_Status 
loader C_Month.csv C_Month 
loader C_Occupation.csv C_Occupation 
loader C_Product_Type.csv C_Product_Type 
loader C_Quarter.csv C_Quarter 
loader C_State.csv C_State 
loader C_Week.csv C_Week 
loader C_WeekDay.csv C_WeekDay 
loader Company.csv Company 
loader F_Account.csv F_Account 
loader F_Customer.csv F_Customer 
