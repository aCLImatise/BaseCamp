version 1.0

task Msaboot {
  input {
    String iI
    String oO
    String nN
  }
  command <<<
    msaboot \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}