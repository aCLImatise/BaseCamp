version 1.0

task PipitsFunits {
  input {
    File iI
    String oO
    String xX
    Boolean rR
    Boolean vV
    Int tT
  }
  command <<<
    pipits_funits \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-v" false="" vV} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}