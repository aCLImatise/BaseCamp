version 1.0

task SolexaQA {
  command <<<
    SolexaQA__
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}