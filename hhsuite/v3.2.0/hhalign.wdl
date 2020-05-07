version 1.0

task Hhalign {
  input {
    File iI
    File tT
    String mM
    Boolean mM
    Boolean tagsTags
    File oO
    File oa3mOa3m
    File aa3mAa3m
    File ofOfAs
    Boolean addAddCons
    Boolean hideHideCons
    Boolean hideHidePred
    Boolean hideHideDssp
    Boolean showShowSsConf
    Boolean idId
    Boolean diffDiff
    Boolean covCov
    Boolean qidQid
    Boolean qscQsc
    Boolean markMark
    Boolean noNoRealign
    Boolean mactMact
    Boolean globGlob
    Int vV
  }
  command <<<
    hhalign \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{true="-tags" false="" tagsTags} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(oa3mOa3m) then ("-oa3m " +  '"' + oa3mOa3m + '"') else ""} \
      ~{if defined(aa3mAa3m) then ("-aa3m " +  '"' + aa3mAa3m + '"') else ""} \
      ~{if defined(ofOfAs) then ("-Ofas " +  '"' + ofOfAs + '"') else ""} \
      ~{true="-add_cons" false="" addAddCons} \
      ~{true="-hide_cons" false="" hideHideCons} \
      ~{true="-hide_pred" false="" hideHidePred} \
      ~{true="-hide_dssp" false="" hideHideDssp} \
      ~{true="-show_ssconf" false="" showShowSsConf} \
      ~{true="-id" false="" idId} \
      ~{true="-diff" false="" diffDiff} \
      ~{true="-cov" false="" covCov} \
      ~{true="-qid" false="" qidQid} \
      ~{true="-qsc" false="" qscQsc} \
      ~{true="-mark" false="" markMark} \
      ~{true="-norealign" false="" noNoRealign} \
      ~{true="-mact" false="" mactMact} \
      ~{true="-glob" false="" globGlob} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}