version 1.0

task VelocytoToolsCOMMAND {
  input {
    String? args
  }
  command <<<
    velocyto tools COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}