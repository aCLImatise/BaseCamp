version 1.0

task Hhconsensus {
  input {
    File iI
    File sS
    File oO
    File oa3mOa3m
    File oa2mOa2m
    File ofOfAs
    Int vV
    Boolean idId
    Boolean diffDiff
    Boolean covCov
    Boolean qidQid
    Boolean qscQsc
    String mM
    String mM
    Boolean mM
    Int maxMaxSeq
    Int maxMaxRes
  }
  command <<<
    hhconsensus \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(oa3mOa3m) then ("-oa3m " +  '"' + oa3mOa3m + '"') else ""} \
      ~{if defined(oa2mOa2m) then ("-oa2m " +  '"' + oa2mOa2m + '"') else ""} \
      ~{if defined(ofOfAs) then ("-ofas " +  '"' + ofOfAs + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{true="-id" false="" idId} \
      ~{true="-diff" false="" diffDiff} \
      ~{true="-cov" false="" covCov} \
      ~{true="-qid" false="" qidQid} \
      ~{true="-qsc" false="" qscQsc} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{if defined(maxMaxSeq) then ("-maxseq " +  '"' + maxMaxSeq + '"') else ""} \
      ~{if defined(maxMaxRes) then ("-maxres " +  '"' + maxMaxRes + '"') else ""}
  >>>
}