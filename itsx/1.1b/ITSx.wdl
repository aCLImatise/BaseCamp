version 1.0

task ITSx {
  input {
    String iI
    String oO
  }
  command <<<
    ITSx \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}