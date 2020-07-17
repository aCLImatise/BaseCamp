version 1.0

task Convert2snns {
  input {
    String control_file
  }
  command <<<
    convert2snns \
      ~{control_file}
  >>>
  parameter_meta {
    control_file: ""
  }
}