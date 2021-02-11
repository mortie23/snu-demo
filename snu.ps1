## Author: Christopher Mortimer
## Date:   2021-02-11
## Desc:   Run CLI to channel TD data to SXV4

<#
.Description
Single CLI command
#>
snu -source:"jdbc:teradata://192.168.190.128" -su:mortch -sp:mortch -ss:PRD_ADS_HWD_RETAILBANKING_DB -target:"jdbc:sxv4:C:\data\retailbanking"  -create -insert -cleanaction:skip