version 1.0

task PslMapPostChain {
  command <<<
    pslMapPostChain
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}