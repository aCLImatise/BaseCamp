version 1.0

task Consensus {
  command <<<
    consensus
  >>>
  output {
    File out_stdout = stdout()
  }
}