version 1.0

task Hardklor {
  input {
    String config_file
  }
  command <<<
    hardklor \
      ~{config_file}
  >>>
  parameter_meta {
    config_file: ""
  }
}