version 1.0

task ClstrSqlTbl.pl {
  input {
    String? clClStrFile
    String? tblTblFile
  }
  command <<<
    clstr_sql_tbl.pl \
      ~{clClStrFile} \
      ~{tblTblFile}
  >>>
}