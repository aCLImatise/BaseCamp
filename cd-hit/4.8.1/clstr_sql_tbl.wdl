version 1.0

task ClstrSqlTbl.pl {
  input {
    String cl_str_file
    String tbl_file
  }
  command <<<
    clstr_sql_tbl.pl \
      ~{cl_str_file} \
      ~{tbl_file}
  >>>
  parameter_meta {
    cl_str_file: ""
    tbl_file: ""
  }
}