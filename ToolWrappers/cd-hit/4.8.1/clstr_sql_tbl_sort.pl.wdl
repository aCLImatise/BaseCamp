version 1.0

task ClstrSqlTblSortpl {
  command <<<
    clstr_sql_tbl_sort_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}