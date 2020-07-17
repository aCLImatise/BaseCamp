version 1.0

task ParsecCOMMAND {
  input {
    String? args
  }
  command <<<
    parsec COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}