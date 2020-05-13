version 1.0

task Hmmemit {
  input {
    String oO
    String nN
    Boolean aA
    Boolean cC
    Boolean cC
    Boolean pP
    String lL
    Boolean localLocal
    Boolean uniUniLocal
    Boolean gGLocal
    Boolean unigUnigLocal
    String minMinL
    String minuMinu
    String seedSeed
  }
  command <<<
    hmmemit \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="--local" false="" localLocal} \
      ~{true="--unilocal" false="" uniUniLocal} \
      ~{true="--glocal" false="" gGLocal} \
      ~{true="--uniglocal" false="" unigUnigLocal} \
      ~{if defined(minMinL) then ("--minl " +  '"' + minMinL + '"') else ""} \
      ~{if defined(minuMinu) then ("--minu " +  '"' + minuMinu + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}