version 1.0

task CapCMAPGenomedigest {
  input {
    String iI
    String rR
    String oO
  }
  command <<<
    capC-MAP genomedigest \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}