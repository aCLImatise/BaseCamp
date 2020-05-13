version 1.0

task FastqQualityTrimmer {
  input {
    Boolean vV
    String tT
    String lL
    Boolean zZ
    String iI
    String oO
  }
  command <<<
    fastq_quality_trimmer \
      ~{true="-v" false="" vV} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}