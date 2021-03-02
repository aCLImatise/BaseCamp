version 1.0

task Convert2snns {
  input {
    File control_file
  }
  command <<<
    convert2snns \
      ~{control_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    control_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}