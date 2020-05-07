version 1.0

task Hhmake {
  input {
    File iI
    File oO
    File aA
    Int vV
    Int seqSeq
    Boolean addAddCons
    String nameName
    Boolean idId
    Boolean diffDiff
    Boolean covCov
    Boolean qidQid
    Boolean qscQsc
    Boolean neffNeff
    String mM
    String mM
    Boolean mM
    Boolean pcPcHhmConTxtA
    Boolean pcPcHhmConTxtB
    Boolean pcPcHhmConTxtC
    Boolean pcPcHhmNoConTxtA
    Boolean pcPcHhmNoConTxtB
    Boolean pcPcHhmNoConTxtC
    Boolean noNoConTxt
    File conConTxt
    Int maxMaxSeq
    Int maxMaxRes
  }
  command <<<
    hhmake \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(seqSeq) then ("-seq " +  '"' + seqSeq + '"') else ""} \
      ~{true="-add_cons" false="" addAddCons} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{true="-id" false="" idId} \
      ~{true="-diff" false="" diffDiff} \
      ~{true="-cov" false="" covCov} \
      ~{true="-qid" false="" qidQid} \
      ~{true="-qsc" false="" qscQsc} \
      ~{true="-neff" false="" neffNeff} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{true="-pc_hhm_contxt_a" false="" pcPcHhmConTxtA} \
      ~{true="-pc_hhm_contxt_b" false="" pcPcHhmConTxtB} \
      ~{true="-pc_hhm_contxt_c" false="" pcPcHhmConTxtC} \
      ~{true="-pc_hhm_nocontxt_a" false="" pcPcHhmNoConTxtA} \
      ~{true="-pc_hhm_nocontxt_b" false="" pcPcHhmNoConTxtB} \
      ~{true="-pc_hhm_nocontxt_c" false="" pcPcHhmNoConTxtC} \
      ~{true="-nocontxt" false="" noNoConTxt} \
      ~{if defined(conConTxt) then ("-contxt " +  '"' + conConTxt + '"') else ""} \
      ~{if defined(maxMaxSeq) then ("-maxseq " +  '"' + maxMaxSeq + '"') else ""} \
      ~{if defined(maxMaxRes) then ("-maxres " +  '"' + maxMaxRes + '"') else ""}
  >>>
}