version 1.0

task BayesTyperToolsCombine {
  input {
    Boolean vV
    Boolean oO
    Boolean zZ
    Boolean filterFilterAmbiguousAlleles
  }
  command <<<
    bayesTyperTools combine \
      ~{true="-v" false="" vV} \
      ~{true="-o" false="" oO} \
      ~{true="-z" false="" zZ} \
      ~{true="--filter-ambiguous-alleles" false="" filterFilterAmbiguousAlleles}
  >>>
}