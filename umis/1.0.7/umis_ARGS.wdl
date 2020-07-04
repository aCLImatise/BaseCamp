version 1.0

task UmisARGS {
  input {
    String um_is
    String var_command
    String? args
  }
  command <<<
    umis ARGS \
      ~{um_is} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    um_is: ""
    var_command: ""
    args: ""
  }
}