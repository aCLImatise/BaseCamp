version 1.0

task ArbTreegenSeq {
  input {
    String? cfgCfg
    String? treeTree
    String? seqSeq
  }
  command <<<
    arb_treegen seq \
      ~{cfgCfg} \
      ~{treeTree} \
      ~{seqSeq}
  >>>
}