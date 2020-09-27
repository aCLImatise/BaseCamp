version 1.0

task GhosttreeSilvaCOMMAND {
  input {
    String? args
  }
  command <<<
    ghost_tree silva COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}