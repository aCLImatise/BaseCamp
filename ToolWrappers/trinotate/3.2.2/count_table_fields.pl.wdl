version 1.0

task CountTableFieldspl {
  command <<<
    count_table_fields_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}