version 1.0

task PlatypusARGS {
  input {
    String platypus
    String var_command
    String? args
  }
  command <<<
    platypus ARGS \
      ~{platypus} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    platypus: ""
    var_command: ""
    args: ""
  }
}