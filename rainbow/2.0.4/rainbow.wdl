version 1.0

task Rainbow {
  input {
    Int lL
    Int mM
    Int eE
    Boolean lL
    String iI
    Boolean aA
    String oO
    Int nN
    Int lL
    Float fF
    Int rR
    Int rR
  }
  command <<<
    rainbow \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-L" false="" lL} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""}
  >>>
}