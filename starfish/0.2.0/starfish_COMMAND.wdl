version 1.0

task StarfishCOMMAND {
  input {
    String? args
  }
  command <<<
    starfish COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}