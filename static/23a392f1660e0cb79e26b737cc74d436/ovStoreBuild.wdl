version 1.0

task OvStoreBuild {
  input {
    String oO
    String sS
    String cC
    String eE
    Boolean vV
  }
  command <<<
    ovStoreBuild \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}