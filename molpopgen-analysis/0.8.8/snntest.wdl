version 1.0

task Snntest {
  input {
    File sS
    Boolean mM
    String cC
    String oO
    String nN
    Boolean bB
  }
  command <<<
    snntest \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-b" false="" bB}
  >>>
}