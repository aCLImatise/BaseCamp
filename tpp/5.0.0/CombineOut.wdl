version 1.0

task CombineOut {
  input {
    File path_to_directory_one_with_out_files
    File path_to_directory_two_with_out_files
    String output_path
  }
  command <<<
    CombineOut \
      ~{path_to_directory_one_with_out_files} \
      ~{path_to_directory_two_with_out_files} \
      ~{output_path}
  >>>
  parameter_meta {
    path_to_directory_one_with_out_files: ""
    path_to_directory_two_with_out_files: ""
    output_path: ""
  }
}