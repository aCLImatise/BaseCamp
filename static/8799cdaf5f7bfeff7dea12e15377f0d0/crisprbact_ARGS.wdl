version 1.0

task CrisprbactARGS {
  input {
    String crisp_rb_act
    String var_command
    String? args
  }
  command <<<
    crisprbact ARGS \
      ~{crisp_rb_act} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    crisp_rb_act: ""
    var_command: ""
    args: ""
  }
}