version 1.0

task GhostTreeSilvaCOMMAND {
  input {
    String? args
  }
  command <<<
    ghost-tree silva COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}