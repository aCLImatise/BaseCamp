version 1.0

task PhyluceAssemblyGetMatchCounts {
  input {
    String? tax_on_list_config
    String? tax_on_group
    File? locus_db
    Boolean? incomplete_matrix
    String? verbosity
    File? log_path
    Boolean? optimize
    Boolean? random
    Int? samples
    Int? sample_size
    File? extend_locus_db
    Boolean? silent
    Boolean? keep_counts
  }
  command <<<
    phyluce_assembly_get_match_counts \
      ~{if defined(tax_on_list_config) then ("--taxon-list-config " +  '"' + tax_on_list_config + '"') else ""} \
      ~{if defined(tax_on_group) then ("--taxon-group " +  '"' + tax_on_group + '"') else ""} \
      ~{if defined(locus_db) then ("--locus-db " +  '"' + locus_db + '"') else ""} \
      ~{if (incomplete_matrix) then "--incomplete-matrix" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (optimize) then "--optimize" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(extend_locus_db) then ("--extend-locus-db " +  '"' + extend_locus_db + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (keep_counts) then "--keep-counts" else ""}
  >>>
  parameter_meta {
    tax_on_list_config: ""
    tax_on_group: ""
    locus_db: "The SQL database file holding probe matches to\\ntargeted loci (usually \\\"lastz/probe.matches.sqlite\\\".)"
    incomplete_matrix: "Generate an incomplete matrix of data."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    optimize: "Return optimum groups of probes by enumeration\\n(default) or sampling."
    random: "Optimize by sampling."
    samples: "The number of samples to take."
    sample_size: "The group size of samples."
    extend_locus_db: "An SQLlite database file holding probe matches to\\nother targeted loci"
    silent: "Don't print probe names."
    keep_counts: ""
  }
  output {
    File out_stdout = stdout()
  }
}