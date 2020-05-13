version 1.0

task PipitsGetsamplelistfromfasta {
  input {
    String iI
    String oO
  }
  command <<<
    pipits_getsamplelistfromfasta \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}