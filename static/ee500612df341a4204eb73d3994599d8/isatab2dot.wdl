version 1.0

task Isatab2dot {
  input {
    String iI
    String oO
  }
  command <<<
    isatab2dot \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}