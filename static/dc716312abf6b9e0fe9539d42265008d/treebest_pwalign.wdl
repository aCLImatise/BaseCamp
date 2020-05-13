version 1.0

task TreebestPwalign {
  input {
    Boolean fF
    Boolean aA
    Boolean dD
    String oO
    String eE
    String nN
    String sS
    String gG
    String wW
    String bB
    Boolean mM
  }
  command <<<
    treebest pwalign \
      ~{true="-f" false="" fF} \
      ~{true="-a" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-m" false="" mM}
  >>>
}