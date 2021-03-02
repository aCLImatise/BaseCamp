version 1.0

task Quameter {
  command <<<
    quameter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}