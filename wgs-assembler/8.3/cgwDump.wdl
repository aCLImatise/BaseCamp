version 1.0

task CgwDump {
  input {
    String gG
    String tT
    String cC
    String oO
    Boolean allAll
    Boolean readsReads
    Boolean unitUnitIgs
    Boolean contigsContigs
    Boolean scaffoldsScaffolds
    String iI
    Boolean consensusConsensus
    Boolean layoutLayout
    Boolean edgesEdges
    Boolean labelLabelTigS
    Boolean labelLabelReads
  }
  command <<<
    cgwDump \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-all" false="" allAll} \
      ~{true="-reads" false="" readsReads} \
      ~{true="-unitigs" false="" unitUnitIgs} \
      ~{true="-contigs" false="" contigsContigs} \
      ~{true="-scaffolds" false="" scaffoldsScaffolds} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-layout" false="" layoutLayout} \
      ~{true="-edges" false="" edgesEdges} \
      ~{true="-labeltigs" false="" labelLabelTigS} \
      ~{true="-labelreads" false="" labelLabelReads}
  >>>
}