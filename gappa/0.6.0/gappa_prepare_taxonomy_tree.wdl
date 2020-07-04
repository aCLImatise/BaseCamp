version 1.0

task GappaPrepareTaxonomyTree {
  input {
    String? tax_on_list_file
    String? taxonomy_file
    Boolean? keep_singleton_inner_nodes
    Boolean? keep_inner_node_names
    Int? max_level
    String? out_dir
    String? file_prefix
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa prepare taxonomy-tree \
      ~{if defined(tax_on_list_file) then ("--taxon-list-file " +  '"' + tax_on_list_file + '"') else ""} \
      ~{if defined(taxonomy_file) then ("--taxonomy-file " +  '"' + taxonomy_file + '"') else ""} \
      ~{true="--keep-singleton-inner-nodes" false="" keep_singleton_inner_nodes} \
      ~{true="--keep-inner-node-names" false="" keep_inner_node_names} \
      ~{if defined(max_level) then ("--max-level " +  '"' + max_level + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    tax_on_list_file: ":FILE File that maps taxon names to taxonomic paths."
    taxonomy_file: ":FILE   File that lists the taxa of the taxonomy as taxonomic paths."
    keep_singleton_inner_nodes: "Taxonomic paths can go down several levels without any furcation. Use this option to keep such paths, instead of collapsing them into a single level."
    keep_inner_node_names: "Taxonomies contain names at every level, while trees usually do not. Use this option to also set taxonomic names for the inner nodes of the tree."
    max_level: "=-1          Maximum taxonomic level to process (0-based). Taxa below this level are not added to the tree."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}