version 1.0

task PybelManageNodes {
  input {
    String var_command
    String? args
  }
  command <<<
    pybel manage nodes \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}