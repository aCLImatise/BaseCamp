version 1.0

task BamFragCoverage.py {
  input {
    String fF
    String cC
    Int iI
    String bB
    Boolean xX
    Boolean oO
    String tT
    String qQ
    String lL
    String gG
    String rR
    String pP
    Boolean qQ
    String? bamBam
  }
  command <<<
    bam_frag_coverage.py \
      ~{bamBam} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-o" false="" oO} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-Q" false="" qQ}
  >>>
}