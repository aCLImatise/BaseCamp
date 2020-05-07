version 1.0

task ArbTreegenCfgSeq {
  input {
    String? treeTree
    String? seqSeq
  }
  command <<<
    arb_treegen cfg seq \
      ~{treeTree} \
      ~{seqSeq}
  >>>
}