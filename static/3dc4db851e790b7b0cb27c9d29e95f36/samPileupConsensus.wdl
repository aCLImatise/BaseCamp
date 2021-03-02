version 1.0

task SamPileupConsensus {
  command <<<
    samPileupConsensus
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}