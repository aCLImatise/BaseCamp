version 1.0

task AnviExportSplitsTaxonomy {
  input {
    String cC
    File oO
  }
  command <<<
    anvi-export-splits-taxonomy \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}