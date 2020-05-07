version 1.0

task FilterReads {
  input {
    String oO
    Int lL
    Int nN
    Float eE
    Int mM
    String cC
    Boolean vV
  }
  command <<<
    filter_reads \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}