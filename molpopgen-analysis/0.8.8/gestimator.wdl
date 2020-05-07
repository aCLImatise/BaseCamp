version 1.0

task Gestimator {
  input {
    String oO
    Boolean vV
    Boolean mM
    Boolean gG
  }
  command <<<
    gestimator \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-m" false="" mM} \
      ~{true="-g" false="" gG}
  >>>
}