version 1.0

task PhyluceProbeQueryMultiFastaTable {
  input {
    String dbDb
    String outputOutput
    String baseBaseTaxOn
    String specificSpecificCounts
  }
  command <<<
    phyluce_probe_query_multi_fasta_table \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(baseBaseTaxOn) then ("--base-taxon " +  '"' + baseBaseTaxOn + '"') else ""} \
      ~{if defined(specificSpecificCounts) then ("--specific-counts " +  '"' + specificSpecificCounts + '"') else ""}
  >>>
}