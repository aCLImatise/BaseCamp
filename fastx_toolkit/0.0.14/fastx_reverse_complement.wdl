version 1.0

task FastxReverseComplement {
  input {
    Boolean rR
    Boolean zZ
    Boolean vV
    String iI
    String oO
  }
  command <<<
    fastx_reverse_complement \
      ~{true="-r" false="" rR} \
      ~{true="-z" false="" zZ} \
      ~{true="-v" false="" vV} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}