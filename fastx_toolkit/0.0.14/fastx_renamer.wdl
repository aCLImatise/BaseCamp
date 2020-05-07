version 1.0

task FastxRenamer {
  input {
    String nN
    Boolean zZ
    Boolean vV
    String iI
    String oO
  }
  command <<<
    fastx_renamer \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{true="-v" false="" vV} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}