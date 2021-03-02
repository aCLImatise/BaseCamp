version 1.0

task NcrfConsensusFilter {
  command <<<
    ncrf_consensus_filter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}