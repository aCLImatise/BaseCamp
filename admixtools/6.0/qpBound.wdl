version 1.0

task QpBound {
  input {
    String fF
    String bB
    File pP
    Boolean gG
    String sS
    String oO
    Boolean vV
    Boolean vV
    Boolean xX
  }
  command <<<
    qpBound \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV} \
      ~{true="-x" false="" xX}
  >>>
}