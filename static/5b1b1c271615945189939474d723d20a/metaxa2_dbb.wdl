version 1.0

task Metaxa2Dbb {
  input {
    String iI
    String oO
  }
  command <<<
    metaxa2_dbb \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}