version 1.0

task Erateestimate {
  command <<<
    erate_estimate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}