version 1.0

task Metaxa2X {
  input {
    String iI
    String oO
  }
  command <<<
    metaxa2_x \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}