version 1.0

task GhosttreeSilvaCOMMAND {
  input {
    String? args
  }
  command <<<
    ghost_tree silva COMMAND \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}