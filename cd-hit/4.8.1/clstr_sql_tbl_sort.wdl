version 1.0

task ClstrSqlTblSort.pl {
  input {
    String? tableTableFile
    String? levelLevel
  }
  command <<<
    clstr_sql_tbl_sort.pl \
      ~{tableTableFile} \
      ~{levelLevel}
  >>>
}