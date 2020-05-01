version 1.0

task RoaryUniqueGenesPerSample {
  input {
    String oO
    String cC
    Boolean vV
  }
  command <<<
    roary-unique_genes_per_sample \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}