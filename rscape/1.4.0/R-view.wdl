version 1.0

task RView {
  input {
    Boolean vV
    String maxdMaxd
    String minMinL
    Boolean minMin
    Boolean cbCb
    Boolean interInter
    String oO
    String toToL
    String seedSeed
  }
  command <<<
    R-view \
      ~{true="-v" false="" vV} \
      ~{if defined(maxdMaxd) then ("--maxD " +  '"' + maxdMaxd + '"') else ""} \
      ~{if defined(minMinL) then ("--minL " +  '"' + minMinL + '"') else ""} \
      ~{true="--MIN" false="" minMin} \
      ~{true="--CB" false="" cbCb} \
      ~{true="--inter" false="" interInter} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(toToL) then ("--tol " +  '"' + toToL + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}