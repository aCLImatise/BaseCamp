version 1.0

task Homer {
  input {
    Boolean protProt
    File sS
    File gG
    File merMer
    File mM
    File oO
    File seedSeed
    Boolean offsetOffset
    Float nN
    Boolean seqSeqLess
    Boolean seqSeqMore
  }
  command <<<
    homer \
      ~{true="-prot" false="" protProt} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(merMer) then ("-mer " +  '"' + merMer + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-offset" false="" offsetOffset} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{true="-seqless" false="" seqSeqLess} \
      ~{true="-seqmore" false="" seqSeqMore}
  >>>
}