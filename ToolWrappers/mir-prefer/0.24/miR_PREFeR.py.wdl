version 1.0

task MiRPREFeRpy {
  input {
    String var_command
    String config_file
  }
  command <<<
    miR_PREFeR_py \
      ~{var_command} \
      ~{config_file}
  >>>
  parameter_meta {
    var_command: ""
    config_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}