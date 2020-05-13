version 1.0

task FastqMasker {
  input {
    Boolean vV
    String qQ
    String rR
    Boolean zZ
    String iI
    String oO
  }
  command <<<
    fastq_masker \
      ~{true="-v" false="" vV} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}