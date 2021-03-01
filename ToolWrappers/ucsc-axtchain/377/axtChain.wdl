version 1.0

task AxtChain {
  command <<<
    axtChain
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}