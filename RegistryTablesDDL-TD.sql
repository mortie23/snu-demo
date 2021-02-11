/*
 Convert the MS SQL DDL to Teradata native DDL
 */

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_TABLE_LABEL (
  TABLENAME VARCHAR(128) NOT NULL
  , LABEL VARCHAR(128) NULL
  , CONSTRAINT PK_R_TABLE_LABEL
    PRIMARY KEY (TABLENAME)
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_MEASURES (
  COLUMNNAME VARCHAR(128) NOT NULL
  , TABLENAME VARCHAR(128) NOT NULL
  , CONSTRAINT PK_R_MEASURES
    PRIMARY KEY (COLUMNNAME, TABLENAME)
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_FACTS (
  TABLENAME VARCHAR(128) NOT NULL 
  , CONSTRAINT PK_R_FACTS
    PRIMARY KEY (TABLENAME)
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_DATABASE_LABEL (
  LABEL VARCHAR(128) NOT NULL 
  , CONSTRAINT PK_R_DATABASE_LABEL
    PRIMARY KEY (LABEL) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_COUNT_DEFAULT (
  TABLENAME VARCHAR(128) NOT NULL 
  , COLUMNNAME VARCHAR(128) NULL
  , CONSTRAINT PK_R_COUNT_DEFAULT
    PRIMARY KEY (TABLENAME) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_COLUMN_LABEL (
  TABLENAME VARCHAR(128) NOT NULL
  , COLUMNNAME VARCHAR(128) NOT NULL
  , LABEL VARCHAR(128) NULL
  , CONSTRAINT PK_R_COLUMN_LABEL
    PRIMARY KEY (TABLENAME, COLUMNNAME) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_CLEANSING_RULES (
  TABLENAME VARCHAR(128) NOT NULL
  , COLUMNNAME VARCHAR(128) NOT NULL
  , RULETYPE VARCHAR(128) NULL
  , RULEPARAM VARCHAR(128) NULL
  , CONSTRAINT PK_R_CLEANSING_RULES
    PRIMARY KEY (TABLENAME, COLUMNNAME) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_CLASSIFICATIONS (
  TABLENAME VARCHAR(128) NOT NULL
  , VALUECODE VARCHAR(128) NULL
  , DISPLAYNAME VARCHAR(128) NULL
  , CONSTRAINT PK_R_CLASSIFICATIONS
    PRIMARY KEY (TABLENAME) 
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_BINS (
  TABLENAME VARCHAR(128) NOT NULL
  , COLUMNNAME VARCHAR(128) NOT NULL
  , BINVALUE VARCHAR(128) NOT NULL
  , CONSTRAINT PK_R_BINS
    PRIMARY KEY (TABLENAME, COLUMNNAME, BINVALUE)
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.R_GROUP (
  "TYPE" VARCHAR(64) NOT NULL
  , DISPLAYNAME VARCHAR(128) NOT NULL
  , TABLENAME VARCHAR(128) 
  , COLUMNNAME VARCHAR(128) 
  , PARENTNAME VARCHAR(128) 
  , CONSTRAINT PK_R_GROUP
    PRIMARY KEY ("TYPE", DISPLAYNAME)
)
;

CREATE TABLE PRD_ADS_HWD_RETAILBANKING_DB.__SUPER_CHANNEL__ (
  reg_key VARCHAR(128) NOT NULL 
  , reg_value VARCHAR(128) NULL
  , CONSTRAINT PK___SUPER_CHANNEL__
    PRIMARY KEY (reg_key)
)
;

