version 1.0

task OvStoreBucketizer {
  input {
    String oO
    String sS
    String cC
    String bB
    String eE
    Boolean fF
    Boolean vV
  }
  command <<<
    ovStoreBucketizer \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV}
  >>>
}