version 1.0

task PipitsPhylotypeBiom {
  input {
    String iI
    File oO
    Int lL
  }
  command <<<
    pipits_phylotype_biom \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}