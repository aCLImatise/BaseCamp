version 1.0

task KmerMask {
  input {
    Boolean oO
    Int mM
    String eE
    Boolean novelNovel
    Boolean confirmedConfirmed
    Boolean promotePromote
    Boolean demoteDemote
    Boolean discardDiscard
    Boolean unlinkUnlink
    Boolean noNoMasking
    String lowLowThreshold
    String highHighThreshold
    String hH
    String tT
    Boolean vV
  }
  command <<<
    kmer-mask \
      ~{true="-o" false="" oO} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-novel" false="" novelNovel} \
      ~{true="-confirmed" false="" confirmedConfirmed} \
      ~{true="-promote" false="" promotePromote} \
      ~{true="-demote" false="" demoteDemote} \
      ~{true="-discard" false="" discardDiscard} \
      ~{true="-unlink" false="" unlinkUnlink} \
      ~{true="-nomasking" false="" noNoMasking} \
      ~{if defined(lowLowThreshold) then ("-lowthreshold " +  '"' + lowLowThreshold + '"') else ""} \
      ~{if defined(highHighThreshold) then ("-highthreshold " +  '"' + highHighThreshold + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}