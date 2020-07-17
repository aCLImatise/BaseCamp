version 1.0

task GhostTreeExtensionsCOMMAND {
  input {
    String? args
  }
  command <<<
    ghost-tree extensions COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}