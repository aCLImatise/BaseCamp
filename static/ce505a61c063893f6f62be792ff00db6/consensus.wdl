version 1.0

task Consensus {
  command <<<
    consensus
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}