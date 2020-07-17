version 1.0

task CrisprbactCOMMAND {
  input {
    String? args
  }
  command <<<
    crisprbact COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}