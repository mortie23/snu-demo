## Author: Christopher Mortimer
## Date:   2021-02-11
## Desc:   Run CLI to channel TD data to SXV4

<#
.Description
Single CLI command
#>

<#
Not working currently
Build finished with cleansing actions taken
str.channel.ChannelException: A database error occurred.
Cause:
        str.database.DatabaseException: An error occured while commiting changes to the database connection
        Cause:
                java.sql.SQLException: Key violation on add row.
                SQLState: 23000

Channel has abnormally ended.  Please see errors for details

*** Caught Channel exception ***

str.channel.ChannelException: A database error occurred.
Cause:
str.database.DatabaseException: An error occured while commiting changes to the database connection
Cause:
java.sql.SQLException: Key violation on add row.
#>
#snu -source:"jdbc:teradata://192.168.190.128" -su:mortch -sp:mortch -ss:PRD_ADS_HWD_RETAILBANKING_DB -target:"jdbc:sxv4:C:\data\retailbanking-snu"  -create -insert 
snu -create -insert -sp:mortch .\retailbanking.xml