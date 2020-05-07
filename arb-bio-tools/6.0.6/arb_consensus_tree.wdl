version 1.0

task ArbConsensusTree {
  input {
    String wW
  }
  command <<<
    arb_consensus_tree \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""}
  >>>
}