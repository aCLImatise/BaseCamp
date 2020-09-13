version 1.0

task NcrfConsensusFilter {
  command <<<
    ncrf_consensus_filter
  >>>
  output {
    File out_stdout = stdout()
  }
}