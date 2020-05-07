version 1.0

task FastqQualityFilter {
  input {
    Boolean vV
    String qQ
    String pP
    Boolean zZ
    String iI
    String oO
  }
  command <<<
    fastq_quality_filter \
      ~{true="-v" false="" vV} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}