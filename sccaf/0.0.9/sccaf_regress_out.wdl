version 1.0

task SccafRegressOut {
  input {
    String iI
    String oO
    String kK
  }
  command <<<
    sccaf-regress-out \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""}
  >>>
}