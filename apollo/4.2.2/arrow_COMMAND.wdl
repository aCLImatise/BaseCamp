version 1.0

task ArrowCOMMAND {
  input {
    String? args
  }
  command <<<
    arrow COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}