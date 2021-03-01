version 1.0

task Simulator {
  command <<<
    simulator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}