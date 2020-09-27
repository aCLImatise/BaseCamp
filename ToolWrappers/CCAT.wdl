version 1.0

task CCAT {
  input {
    File library_one_tag_file_name
    File library_two_tag_file_name
    Int chromosome_length_file_name
    File config_file_name
    String project_name
  }
  command <<<
    CCAT \
      ~{library_one_tag_file_name} \
      ~{library_two_tag_file_name} \
      ~{chromosome_length_file_name} \
      ~{config_file_name} \
      ~{project_name}
  >>>
  parameter_meta {
    library_one_tag_file_name: ""
    library_two_tag_file_name: ""
    chromosome_length_file_name: ""
    config_file_name: ""
    project_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}