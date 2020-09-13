version 1.0

task PybelManageEdges {
  input {
    String var_command
    String? args
  }
  command <<<
    pybel manage edges \
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