version 1.0

task PhyluceProbeQueryMultiMergeTable {
  input {
    String? db
    File? when_using_
    String? base_tax_on
    Int? specific_counts
  }
  command <<<
    phyluce_probe_query_multi_merge_table \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(when_using_) then ("--output " +  '"' + when_using_ + '"') else ""} \
      ~{if defined(base_tax_on) then ("--base-taxon " +  '"' + base_tax_on + '"') else ""} \
      ~{if defined(specific_counts) then ("--specific-counts " +  '"' + specific_counts + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "The database to query"
    when_using_: "When using --specific-counts, output a BED file of\\nthose loci"
    base_tax_on: "The base taxon to use."
    specific_counts: "Return data for a specific minimum number of taxa.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_when_using_ = "${in_when_using_}"
  }
}