version 1.0

task MbupgradetableTableFileTableFile {
  input {
    String mb_upgrade_table
    String table_file
    String output_file
  }
  command <<<
    mb_upgrade_table table_file table_file \
      ~{mb_upgrade_table} \
      ~{table_file} \
      ~{output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mb_upgrade_table: ""
    table_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}