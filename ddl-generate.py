# Author:  Christopher Mortimer
# Date:    2021-02-12
# Desc:    Convert TDD DBColumns to Teradata DDL

import pandas
import argparse

# Using argparse for reading arguments
args = argparse.ArgumentParser(description='Convert TDD to Teradata DDL')
args.add_argument('--filename', help='TDD File Name')

def typeconv(tdd_type, tdd_length):
  """
typeconv
function called for each column of tables
called in buildDDL
converts STR TDD column metadata to Teradata data type ie. string,128 -> VARCHAR(128)
"""
  if tdd_type == "string":
    return "VARCHAR({0})".format(tdd_length)
  if tdd_type == "integer":
    return "INTEGER"
  if tdd_type == "real":
    return "FLOAT"


def buildDDL():
  """
buildDDL
Function called by main
creates file ddl-gen.sql
Series of Teradata DDL statements for tables generated from DBColumns, DBPrimaryKeys, DBForeignKeys
"""
  # Create file
  f = open("ddl-gen.sql", "w")
  # Start writing comment header
  f.write("/* Teradata DDL */\n")
  arg = args.parse_args()
  filename = arg.filename
  # read the metadata files we need to build the DDL
  if (filename=='null'):
    filename=''
  else:  
    filename=filename+'.'
  df_col = pandas.read_csv("tdd\\{0}DBColumns".format(filename),header=None,names=(["table_name","column_name","column_label","column_type","column_length","column_order","isnull",]),)
  df_pk = pandas.read_csv("tdd\\{0}DBPrimaryKeys".format(filename),header=None,names=(["table_name", "column_name"]))
  df_fk = pandas.read_csv("tdd\\{0}DBForeignKeys".format(filename),header=None,names=(["table_name", "column_name_foreign_table", "fk_column_name"]),)
  prev_table = ""
  for i, colrow in df_col.iterrows():
    if colrow["table_name"] != prev_table:
      pks = df_pk[df_pk.table_name == prev_table]
      fks = df_fk[df_fk.table_name == prev_table]
      if not pks.empty:
        f.write("  , PRIMARY KEY ({0})\n".format(pks.column_name.to_string(index=False)))
      if not fks.empty:
        for j, fkrow in fks.iterrows():
          f.write("  , FOREIGN KEY ({0})\n".format(fkrow.column_name_foreign_table.split(":")[0]))
          f.write("    REFERENCES WITH NO CHECK OPTION PRD_ADS_HWD_NHWDSCUBE_DB.{0} ({1})\n".format(fkrow.column_name_foreign_table.split(":")[1], fkrow.fk_column_name,))
      f.write(")\n;\nCREATE TABLE PRD_ADS_HWD_NHWDSCUBE_DB.{0} (\n".format(colrow["table_name"]))
      f.write("  {0} TITLE '{1}' {2} NOT NULL\n".format(colrow["column_name"],colrow["column_label"],typeconv(colrow["column_type"], colrow["column_length"]),))
    else:
      f.write("  , {0} TITLE '{1}' {2} NOT NULL\n".format(colrow["column_name"],colrow["column_label"],typeconv(colrow["column_type"], colrow["column_length"]),))
    prev_table = colrow["table_name"]

  f.close()


if __name__ == "__main__":
  buildDDL()
