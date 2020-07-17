version 1.0

task StarfishARGS {
  input {
    String starfish
    String var_command
    String? args
  }
  command <<<
    starfish ARGS \
      ~{starfish} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    starfish: ""
    var_command: ""
    args: ""
  }
}