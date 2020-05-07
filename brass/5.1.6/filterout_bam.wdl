version 1.0

task FilteroutBam {
  input {
    Boolean cC
    String fF
    File oO
    String qQ
    String qQ
    String sS
    String sS
    Boolean vV
  }
  command <<<
    filterout-bam \
      ~{true="-c" false="" cC} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}