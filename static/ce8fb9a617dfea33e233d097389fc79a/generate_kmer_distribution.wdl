version 1.0

task GenerateKmerDistribution.py {
  input {
    String iI
    String oO
  }
  command <<<
    generate_kmer_distribution.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}