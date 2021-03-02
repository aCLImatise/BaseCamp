version 1.0

task GappaPrepareTaxonomytree {
  input {
    File? tax_on_list_file
    File? taxonomy_file
    Boolean? keep_singleton_inner_nodes
    Boolean? keep_inner_node_names
    Int? max_level
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa prepare taxonomy_tree \
      ~{if defined(tax_on_list_file) then ("--taxon-list-file " +  '"' + tax_on_list_file + '"') else ""} \
      ~{if defined(taxonomy_file) then ("--taxonomy-file " +  '"' + taxonomy_file + '"') else ""} \
      ~{if (keep_singleton_inner_nodes) then "--keep-singleton-inner-nodes" else ""} \
      ~{if (keep_inner_node_names) then "--keep-inner-node-names" else ""} \
      ~{if defined(max_level) then ("--max-level " +  '"' + max_level + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(file_suffix) then ("--file-suffix " +  '"' + file_suffix + '"') else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.0--he513fc3_0"
  }
  parameter_meta {
    tax_on_list_file: ":FILE File that maps taxon names to taxonomic paths."
    taxonomy_file: ":FILE   File that lists the taxa of the taxonomy as taxonomic paths."
    keep_singleton_inner_nodes: "Taxonomic paths can go down several levels without any furcation. Use this option to keep such paths, instead of collapsing them into a single level."
    keep_inner_node_names: "Taxonomies contain names at every level, while trees usually do not. Use this option to also set taxonomic names for the inner nodes of the tree."
    max_level: "=-1          Maximum taxonomic level to process (0-based). Taxa below this level are not added to the tree."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    file_suffix: "File suffix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_file_prefix = "${in_file_prefix}"
    File out_file_suffix = "${in_file_suffix}"
    File out_log_file = "${in_log_file}"
  }
}