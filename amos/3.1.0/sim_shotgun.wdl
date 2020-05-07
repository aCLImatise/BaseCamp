version 1.0

task SimShotgun {
  input {
    String cC
    String oO
    String sS
    String? coverageCoverage
    String? readReadLen
    String? genomeGenomeLen
  }
  command <<<
    sim-shotgun \
      ~{coverageCoverage} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{readReadLen} \
      ~{genomeGenomeLen}
  >>>
}