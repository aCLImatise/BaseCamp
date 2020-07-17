version 1.0

task Mummer {
  input {
    String reference_file
    String query_files
  }
  command <<<
    mummer \
      ~{reference_file} \
      ~{query_files}
  >>>
  parameter_meta {
    reference_file: ""
    query_files: ""
  }
}