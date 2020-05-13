version 1.0

task Wdl2dot {
  input {
    String iI
    String oO
  }
  command <<<
    wdl2dot \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}