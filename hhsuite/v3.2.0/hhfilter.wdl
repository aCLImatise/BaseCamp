version 1.0

task Hhfilter {
  input {
    File iI
    File oO
    File aA
    Int vV
    Boolean idId
    Boolean diffDiff
    Boolean covCov
    Boolean qidQid
    Boolean qscQsc
    Boolean neffNeff
    String mM
    String mM
    Boolean mM
    Int maxMaxSeq
    Int maxMaxRes
  }
  command <<<
    hhfilter \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{true="-id" false="" idId} \
      ~{true="-diff" false="" diffDiff} \
      ~{true="-cov" false="" covCov} \
      ~{true="-qid" false="" qidQid} \
      ~{true="-qsc" false="" qscQsc} \
      ~{true="-neff" false="" neffNeff} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{if defined(maxMaxSeq) then ("-maxseq " +  '"' + maxMaxSeq + '"') else ""} \
      ~{if defined(maxMaxRes) then ("-maxres " +  '"' + maxMaxRes + '"') else ""}
  >>>
}