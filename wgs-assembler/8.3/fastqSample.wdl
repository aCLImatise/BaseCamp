version 1.0

task FastqSample {
  input {
    String iI
    String tT
    String lL
    Boolean uU
    String oO
    Boolean aA
    String mM
    Boolean maxMax
    String gG
    String cC
    String pP
    String fF
    String bB
  }
  command <<<
    fastqSample \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="-U" false="" uU} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-max" false="" maxMax} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}