version 1.0

task PlatypusCOMMAND {
  input {
    String? args
  }
  command <<<
    platypus COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}