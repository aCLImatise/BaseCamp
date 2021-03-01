version 1.0

task ArbConsensusTree {
  input {
    String? write_consensus_tree
    String? tree
  }
  command <<<
    arb_consensus_tree \
      ~{tree} \
      ~{if defined(write_consensus_tree) then ("-w " +  '"' + write_consensus_tree + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_consensus_tree: "write consensus tree to outfile"
    tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}