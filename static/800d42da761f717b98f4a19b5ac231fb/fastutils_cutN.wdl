version 1.0

task FastutilsCutN {
  input {
    String iI
    String oO
    Boolean vV
  }
  command <<<
    fastutils cutN \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}