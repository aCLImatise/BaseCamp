version 1.0

task ClstrSqlTblpl {
  command <<<
    clstr_sql_tbl_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}