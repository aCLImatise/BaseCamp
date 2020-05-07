version 1.0

task Scallop {
  input {
    String iI
    String oO
  }
  command <<<
    scallop \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}