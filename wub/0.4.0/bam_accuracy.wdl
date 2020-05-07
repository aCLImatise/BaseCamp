version 1.0

task BamAccuracy.py {
  input {
    String cC
    String gG
    String lL
    String tT
    String qQ
    Boolean eE
    String rR
    String pP
    Boolean qQ
    String? bamBam
  }
  command <<<
    bam_accuracy.py \
      ~{bamBam} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-Q" false="" qQ}
  >>>
}