version 1.0

task Terminator {
  input {
    String gG
    String tT
    String cC
    String oO
    String sS
    String nN
    String eE
  }
  command <<<
    terminator \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""}
  >>>
}