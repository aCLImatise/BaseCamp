version 1.0

task ArbTreegenTree {
  input {
    String? cfgCfg
    String? treeTree
    String? seqSeq
  }
  command <<<
    arb_treegen tree \
      ~{cfgCfg} \
      ~{treeTree} \
      ~{seqSeq}
  >>>
}