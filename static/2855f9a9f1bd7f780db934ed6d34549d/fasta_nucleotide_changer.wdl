version 1.0

task FastaNucleotideChanger {
  input {
    Boolean zZ
    Boolean vV
    String iI
    String oO
    Boolean rR
    Boolean dD
  }
  command <<<
    fasta_nucleotide_changer \
      ~{true="-z" false="" zZ} \
      ~{true="-v" false="" vV} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-d" false="" dD}
  >>>
}