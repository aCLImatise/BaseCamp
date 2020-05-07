version 1.0

task FastsparBootstrap {
  input {
    Boolean cC
    Boolean nN
    Boolean pP
    Int threadsThreads
    Int seedSeed
    Boolean vV
  }
  command <<<
    fastspar_bootstrap \
      ~{true="-c" false="" cC} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}