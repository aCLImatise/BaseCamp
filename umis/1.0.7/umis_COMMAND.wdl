version 1.0

task UmisCOMMAND {
  input {
    String? args
  }
  command <<<
    umis COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}