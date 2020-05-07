version 1.0

task Metaxa2Uc {
  input {
    String iI
    String oO
  }
  command <<<
    metaxa2_uc \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}