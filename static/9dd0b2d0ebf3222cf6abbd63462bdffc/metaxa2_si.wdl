version 1.0

task Metaxa2Si {
  input {
    String iI
    String oO
  }
  command <<<
    metaxa2_si \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}