version 1.0

task Metaxa2C {
  input {
    String iI
    String oO
  }
  command <<<
    metaxa2_c \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}