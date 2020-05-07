version 1.0

task PipitsUc2otutable {
  input {
    String iI
    String oO
    String lL
  }
  command <<<
    pipits_uc2otutable \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}