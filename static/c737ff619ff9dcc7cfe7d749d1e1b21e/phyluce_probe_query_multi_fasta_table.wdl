version 1.0

task PhyluceProbeQueryMultiFastaTable {
  input {
    String? base_tax_on
    String? db
    File? when_using_specificcounts
    Int? specific_counts
  }
  command <<<
    phyluce_probe_query_multi_fasta_table \
      ~{if defined(base_tax_on) then ("--base-taxon " +  '"' + base_tax_on + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(when_using_specificcounts) then ("--output " +  '"' + when_using_specificcounts + '"') else ""} \
      ~{if defined(specific_counts) then ("--specific-counts " +  '"' + specific_counts + '"') else ""}
  >>>
  parameter_meta {
    base_tax_on: "[--specific-counts SPECIFIC_COUNTS]"
    db: "The database to query"
    when_using_specificcounts: "When using --specific-counts, output a BED file of\\nthose loci"
    specific_counts: "Return data for a specific minimum number of taxa.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_when_using_specificcounts = "${in_when_using_specificcounts}"
  }
}