version 1.0

task NcrfConsensusFilterpy {
  command <<<
    ncrf_consensus_filter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}