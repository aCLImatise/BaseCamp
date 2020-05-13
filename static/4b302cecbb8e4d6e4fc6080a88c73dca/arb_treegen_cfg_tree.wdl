version 1.0

task ArbTreegenCfgTree {
  input {
    String? seqSeq
  }
  command <<<
    arb_treegen cfg tree \
      ~{seqSeq}
  >>>
}