version 1.0

task PhyluceProbeGetMultiFastaTable {
  input {
    String fastFastAs
    String outputOutput
    String baseBaseTaxOn
  }
  command <<<
    phyluce_probe_get_multi_fasta_table \
      ~{if defined(fastFastAs) then ("--fastas " +  '"' + fastFastAs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(baseBaseTaxOn) then ("--base-taxon " +  '"' + baseBaseTaxOn + '"') else ""}
  >>>
}