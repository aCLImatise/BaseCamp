version 1.0

task Admixture {
  input {
    String aA
    String aA
    Boolean jxJx
    String seedSeed
    String cC
    String cC
    Boolean bB
  }
  command <<<
    admixture \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{true="-jX" false="" jxJx} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-B" false="" bB}
  >>>
}