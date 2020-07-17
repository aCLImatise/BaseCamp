version 1.0

task ParsecARGS {
  input {
    String parsec
    String var_command
    String? args
  }
  command <<<
    parsec ARGS \
      ~{parsec} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    parsec: ""
    var_command: ""
    args: ""
  }
}