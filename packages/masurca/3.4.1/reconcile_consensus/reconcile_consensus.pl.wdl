version 1.0

task ReconcileConsensuspl {
  command <<<
    reconcile_consensus_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}