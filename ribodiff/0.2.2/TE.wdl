version 1.0

task TE.py {
  input {
    String eE
    String cC
    String oO
    String dD
    String sS
    String iI
    String mM
    String rR
    String pP
    String qQ
    String? argumentsArguments
  }
  command <<<
    TE.py \
      ~{argumentsArguments} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""}
  >>>
}