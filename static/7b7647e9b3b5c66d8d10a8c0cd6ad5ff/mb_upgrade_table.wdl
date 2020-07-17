version 1.0

task MbUpgradeTable {
  input {
    String table_file
    String output_file
  }
  command <<<
    mb-upgrade-table \
      ~{table_file} \
      ~{output_file}
  >>>
  parameter_meta {
    table_file: ""
    output_file: ""
  }
}