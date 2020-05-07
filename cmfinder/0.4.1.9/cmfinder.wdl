version 1.0

task Cmfinder {
  input {
    String cC
    String aA
    String iI
    String oO
    String vV
  }
  command <<<
    cmfinder \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}