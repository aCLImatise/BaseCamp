version 1.0

task Zrun {
  input {
    String var_command
    String args
  }
  command <<<
    zrun \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    var_command: ""
    args: ""
  }
}