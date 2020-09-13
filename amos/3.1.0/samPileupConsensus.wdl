version 1.0

task SamPileupConsensus {
  command <<<
    samPileupConsensus
  >>>
  output {
    File out_stdout = stdout()
  }
}