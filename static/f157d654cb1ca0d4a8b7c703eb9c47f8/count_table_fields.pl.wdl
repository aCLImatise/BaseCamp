version 1.0

task CountTableFieldspl {
  command <<<
    count_table_fields_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}