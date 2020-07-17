version 1.0

task PhyluceProbeQueryMultiFastaTable {
  input {
    String? db
    String? when_using_specificcounts
    String? base_tax_on
    String? specific_counts
  }
  command <<<
    phyluce_probe_query_multi_fasta_table \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(when_using_specificcounts) then ("--output " +  '"' + when_using_specificcounts + '"') else ""} \
      ~{if defined(base_tax_on) then ("--base-taxon " +  '"' + base_tax_on + '"') else ""} \
      ~{if defined(specific_counts) then ("--specific-counts " +  '"' + specific_counts + '"') else ""}
  >>>
  parameter_meta {
    db: "The database to query"
    when_using_specificcounts: "When using --specific-counts, output a BED file of those loci"
    base_tax_on: "The base taxon to use."
    specific_counts: "Return data for a specific minimum number of taxa."
  }
}