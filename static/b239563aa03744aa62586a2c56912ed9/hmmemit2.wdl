version 1.0

task Hmmemit2 {
  input {
    Boolean aA
    Boolean cC
    String nN
    String oO
    Boolean qQ
    String seedSeed
    String? hmmHmmEmit
    String? hmmHmmFile
  }
  command <<<
    hmmemit2 \
      ~{hmmHmmEmit} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{hmmHmmFile}
  >>>
}