version 1.0

task GhosttreeExtensionsCOMMAND {
  input {
    String? args
  }
  command <<<
    ghost_tree extensions COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}