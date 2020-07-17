version 1.0

task MiRPREFeR.py {
  input {
    String var_command
    String config_file
  }
  command <<<
    miR_PREFeR.py \
      ~{var_command} \
      ~{config_file}
  >>>
  parameter_meta {
    var_command: ""
    config_file: ""
  }
}