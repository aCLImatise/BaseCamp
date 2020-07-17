version 1.0

task PARTS {
  input {
    String configuration_file
  }
  command <<<
    PARTS \
      ~{configuration_file}
  >>>
  parameter_meta {
    configuration_file: ""
  }
}