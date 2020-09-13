version 1.0

task DfamConsensusToolpl {
  command <<<
    dfamConsensusTool_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}