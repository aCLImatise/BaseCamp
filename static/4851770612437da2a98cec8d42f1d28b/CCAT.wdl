version 1.0

task CCAT {
  input {
    String library_one_tag_file_name
    String library_two_tag_file_name
    String chromosome_length_file_name
    String config_file_name
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
}