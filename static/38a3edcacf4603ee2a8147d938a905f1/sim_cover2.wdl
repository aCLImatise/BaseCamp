version 1.0

task SimCover2 {
  input {
    String oO
    String? coverageCoverage
    String? readReadLen
    String? genomeGenomeLen
  }
  command <<<
    sim-cover2 \
      ~{coverageCoverage} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{readReadLen} \
      ~{genomeGenomeLen}
  >>>
}