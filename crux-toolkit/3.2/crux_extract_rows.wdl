version 1.0

task CruxExtractRows {
  input {
    String tsv_file
    String column_name
    String column_value
  }
  command <<<
    crux extract-rows \
      ~{tsv_file} \
      ~{column_name} \
      ~{column_value}
  >>>
  parameter_meta {
    tsv_file: ""
    column_name: ""
    column_value: ""
  }
}