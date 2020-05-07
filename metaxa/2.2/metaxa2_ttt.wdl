version 1.0

task Metaxa2Ttt {
  input {
    String iI
    String oO
  }
  command <<<
    metaxa2_ttt \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}