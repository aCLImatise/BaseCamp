version 1.0

task FastxUncollapser {
  input {
    String cC
    Boolean vV
    String iI
    String oO
    String? fastFastAUnCollapseR
  }
  command <<<
    fastx_uncollapser \
      ~{fastFastAUnCollapseR} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}