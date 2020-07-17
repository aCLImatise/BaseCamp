version 1.0

task ClstrSqlTblSort.pl {
  input {
    String table_file
    String level
  }
  command <<<
    clstr_sql_tbl_sort.pl \
      ~{table_file} \
      ~{level}
  >>>
  parameter_meta {
    table_file: ""
    level: ""
  }
}