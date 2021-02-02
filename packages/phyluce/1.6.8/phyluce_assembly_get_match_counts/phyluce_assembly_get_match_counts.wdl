version 1.0

task PhyluceAssemblyGetMatchCounts {
  input {
    Int? tax_on_list_config
    String? locus_db
  }
  command <<<
    phyluce_assembly_get_match_counts \
      ~{if defined(tax_on_list_config) then ("--taxon-list-config " +  '"' + tax_on_list_config + '"') else ""} \
      ~{if defined(locus_db) then ("--locus-db " +  '"' + locus_db + '"') else ""}
  >>>
  parameter_meta {
    tax_on_list_config: "--taxon-group TAXON_GROUP --output\\nOUTPUT [--incomplete-matrix]\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH] [--optimize]\\n[--random] [--samples SAMPLES]\\n[--sample-size SAMPLE_SIZE]\\n[--extend-locus-db EXTEND_LOCUS_DB]\\n[--silent] [--keep-counts]"
    locus_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}