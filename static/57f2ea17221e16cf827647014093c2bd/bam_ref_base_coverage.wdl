version 1.0

task BamRefBaseCoverage.py {
  input {
    String fF
    String cC
    String tT
    Int mM
    Boolean qQ
    String? bamBam
  }
  command <<<
    bam_ref_base_coverage.py \
      ~{bamBam} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-Q" false="" qQ}
  >>>
}