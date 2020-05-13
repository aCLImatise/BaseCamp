version 1.0

task FastqToFasta {
  input {
    Boolean rR
    Boolean nN
    Boolean vV
    Boolean zZ
    String iI
    String oO
  }
  command <<<
    fastq_to_fasta \
      ~{true="-r" false="" rR} \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV} \
      ~{true="-z" false="" zZ} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}