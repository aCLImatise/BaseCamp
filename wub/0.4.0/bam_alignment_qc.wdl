version 1.0

task BamAlignmentQc.py {
  input {
    String fF
    String cC
    String nN
    Boolean xX
    String tT
    String qQ
    String iI
    String rR
    String pP
    Boolean qQ
    String? bamBam
  }
  command <<<
    bam_alignment_qc.py \
      ~{bamBam} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-Q" false="" qQ}
  >>>
}