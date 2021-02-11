# snu-demo

Using the STR SuperCHANNEL CLI to create an SXV4 from Teradata.  
Extending the demo from [https://docs.wingarc.com.au/superstar95/9.5/superchannel/superchannel-command-line-utility/channelling-without-a-project-file-snu](https://docs.wingarc.com.au/superstar95/9.5/superchannel/superchannel-command-line-utility/channelling-without-a-project-file-snu)  
Downloaded resources from [https://docs.wingarc.com.au/superstar95/9.5/download-library](https://docs.wingarc.com.au/superstar95/9.5/download-library)

## Usage

### Dependancies 

1. Windows Platform with Powershell (7.1)
1. Teradata Express Virtual Machine [Download](https://downloads.teradata.com/download/database/teradata-express-for-vmware-player) 
1. Teradata Tools and Utilities installed (TTU)
1. Add snu executable to the powershell PATH
```ps1
$env:Path += ";C:\ProgramData\STR\SuperCHANNEL\bin"  
```

### Run commands

```ps1
# Create registry tables in source DB
tbuild -f .\ddl-tpt.tpt -v RegistryTablesDDL-TD.jvar
# Create Star Schema Retail Banking tables in source DB
tbuild -f .\ddl-tpt.tpt -v RetailBankingDDL-TD-create-tables-without-fk.jvar
# Load the data
.\load.ps1
# Add the foreign keys
tbuild -f .\ddl-tpt.tpt -v RetailBankingDDL-TD-add-fk.jvar
# Run SNU command
.\snu.ps1
```

## Foreign Keys

All have the `WITH NO CHECK OPTION` as adding them wihtout this option degrades performance considerably.


