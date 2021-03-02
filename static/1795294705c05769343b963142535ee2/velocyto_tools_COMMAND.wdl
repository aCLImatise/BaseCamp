version 1.0

task VelocytoToolsCOMMAND {
  input {
    String? args
  }
  command <<<
    velocyto tools COMMAND \
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