version 1.0

task LdhelmetArgs {
  input {
    String ld_helmet
    String var_command
    String? args
  }
  command <<<
    ldhelmet args \
      ~{ld_helmet} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    ld_helmet: ""
    var_command: ""
    args: ""
  }
}