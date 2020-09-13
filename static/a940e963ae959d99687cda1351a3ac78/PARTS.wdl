version 1.0

task PARTS {
  input {
    File configuration_file
  }
  command <<<
    PARTS \
      ~{configuration_file}
  >>>
  parameter_meta {
    configuration_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}