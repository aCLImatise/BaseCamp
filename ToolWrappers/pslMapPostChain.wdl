version 1.0

task PslMapPostChain {
  command <<<
    pslMapPostChain
  >>>
  output {
    File out_stdout = stdout()
  }
}