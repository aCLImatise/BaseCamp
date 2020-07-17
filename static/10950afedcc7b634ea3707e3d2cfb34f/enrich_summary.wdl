version 1.0

task EnrichSummary {
  input {
    String? samsifter_summary_file
    String? database
    String? index
    String? sort
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    enrich_summary \
      ~{if defined(samsifter_summary_file) then ("--input " +  '"' + samsifter_summary_file + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    samsifter_summary_file: "SamSifter summary file to be enriched"
    database: "override crossreferenced tab-delimited database file to be used for annotation (default: 'Smillie2011_SupplementaryData1.txt' from the Smillie et al. 2011 supplements)"
    index: "override name of database column containing NCBI taxon IDs (default: 'NCBI_ID'); this column should contain only unique entries or duplicate rows may appear in your summary file"
    sort: "override name of database column to sort table by (default: 'Genome_Name')"
    verbose: "print additional information to STDERR"
    debug: "print debug messages to STDERR"
  }
}