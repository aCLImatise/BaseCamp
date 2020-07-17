version 1.0

task ArrowARGS {
  input {
    String arrow
    String var_command
    String? args
  }
  command <<<
    arrow ARGS \
      ~{arrow} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    arrow: ""
    var_command: ""
    args: ""
  }
}