version 1.0

task Metaxa2Rf {
  input {
    String iI
    String oO
  }
  command <<<
    metaxa2_rf \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}