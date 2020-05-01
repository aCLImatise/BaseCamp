version 1.0

task NwPrune {
  input {
    Boolean fF
    Boolean vV
  }
  command <<<
    nw_prune \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV}
  >>>
}