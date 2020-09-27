version 1.0

task Pmdtools {
  input {
    String sam_formatted_data_with_md_field_present_from_stdin
  }
  command <<<
    pmdtools \
      ~{sam_formatted_data_with_md_field_present_from_stdin}
  >>>
  parameter_meta {
    sam_formatted_data_with_md_field_present_from_stdin: ""
  }
  output {
    File out_stdout = stdout()
  }
}