version 1.0

task Validate {
  input {
    File file_path
  }
  command <<<
    validate \
      ~{file_path}
  >>>
  parameter_meta {
    file_path: ""
  }
}