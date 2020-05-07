version 1.0

task CapCMAPCombinereps {
  input {
    String cC
    String iI
    String oO
  }
  command <<<
    capC-MAP combinereps \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}