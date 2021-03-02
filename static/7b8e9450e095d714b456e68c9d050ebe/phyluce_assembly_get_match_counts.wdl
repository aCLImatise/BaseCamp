version 1.0

task PhyluceAssemblyGetMatchCounts {
  input {
    File? locus_db
    File? tax_on_list_config
    File? tax_on_group
    File? path_you_want
    Boolean? incomplete_matrix
    String? verbosity
    File? log_path
    Boolean? optimize
    Boolean? random
    Int? samples
    Int? sample_size
    File? extend_locus_db
    Boolean? silent
  }
  command <<<
    phyluce_assembly_get_match_counts \
      ~{if defined(locus_db) then ("--locus-db " +  '"' + locus_db + '"') else ""} \
      ~{if defined(tax_on_list_config) then ("--taxon-list-config " +  '"' + tax_on_list_config + '"') else ""} \
      ~{if defined(tax_on_group) then ("--taxon-group " +  '"' + tax_on_group + '"') else ""} \
      ~{if defined(path_you_want) then ("--output " +  '"' + path_you_want + '"') else ""} \
      ~{if (incomplete_matrix) then "--incomplete-matrix" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (optimize) then "--optimize" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(extend_locus_db) then ("--extend-locus-db " +  '"' + extend_locus_db + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    locus_db: "The SQL database file holding probe matches to\\ntargeted loci (usually \\\"lastz/probe.matches.sqlite\\\".)"
    tax_on_list_config: "The config file containing lists of the taxa you want\\nto include in matrices."
    tax_on_group: "The [group] in the config file whose specific data\\nmatrix you want to create."
    path_you_want: "The path to the output file you want to create."
    incomplete_matrix: "Generate an incomplete matrix of data."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    optimize: "Return optimum groups of probes by enumeration\\n(default) or sampling."
    random: "Optimize by sampling."
    samples: "The number of samples to take."
    sample_size: "The group size of samples."
    extend_locus_db: "An SQLlite database file holding probe matches to\\nother targeted loci"
    silent: "Don't print probe names."
  }
  output {
    File out_stdout = stdout()
    File out_path_you_want = "${in_path_you_want}"
  }
}