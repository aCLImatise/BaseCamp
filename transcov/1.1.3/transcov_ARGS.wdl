version 1.0

task TranscovARGS {
  input {
    String transco_v
    String var_command
    String? args
  }
  command <<<
    transcov ARGS \
      ~{transco_v} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    transco_v: ""
    var_command: ""
    args: ""
  }
}