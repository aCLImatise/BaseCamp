version 1.0

task SolexaQA {
  command <<<
    SolexaQA__
  >>>
  output {
    File out_stdout = stdout()
  }
}