version 1.0

task Msaconverter {
  input {
    String iI
    String oO
    String pP
    String qQ
  }
  command <<<
    msaconverter \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""}
  >>>
}