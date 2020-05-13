version 1.0

task FastxCollapser {
  input {
    Boolean vV
    String iI
    String oO
  }
  command <<<
    fastx_collapser \
      ~{true="-v" false="" vV} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}