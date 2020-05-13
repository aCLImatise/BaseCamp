version 1.0

task AnviExportContigs {
  input {
    String cC
    Boolean splitsSplitsMode
    File oO
  }
  command <<<
    anvi-export-contigs \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="--splits-mode" false="" splitsSplitsMode} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}