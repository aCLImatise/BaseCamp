version 1.0

task ProphyleIndex {
  input {
    Directory? directory_library_sequences
    Int? number_of_threads
    Int? kmer_length
    File? log_file
    Float? rate_sampling_tree
    Boolean? rewrite_index_files
    Boolean? mask_repeatslow_regions
    Boolean? add_prefixes_node
    Boolean? skip_klcp_construction
    Boolean? keep_temporary_files
    Boolean? autocomplete_tree_names
    Boolean? advanced_configuration_json
  }
  command <<<
    prophyle index \
      ~{if defined(directory_library_sequences) then ("-g " +  '"' + directory_library_sequences + '"') else ""} \
      ~{if defined(number_of_threads) then ("-j " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""} \
      ~{if defined(log_file) then ("-l " +  '"' + log_file + '"') else ""} \
      ~{if defined(rate_sampling_tree) then ("-s " +  '"' + rate_sampling_tree + '"') else ""} \
      ~{if (rewrite_index_files) then "-F" else ""} \
      ~{if (mask_repeatslow_regions) then "-M" else ""} \
      ~{if (add_prefixes_node) then "-P" else ""} \
      ~{if (skip_klcp_construction) then "-K" else ""} \
      ~{if (keep_temporary_files) then "-T" else ""} \
      ~{if (autocomplete_tree_names) then "-A" else ""} \
      ~{if (advanced_configuration_json) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_library_sequences: "directory with the library sequences [dir. of the first\\ntree]"
    number_of_threads: "number of threads [auto (8)]"
    kmer_length: "k-mer length [31]"
    log_file: "log file [<index.dir>/log.txt]"
    rate_sampling_tree: "rate of sampling of the tree [no sampling]"
    rewrite_index_files: "rewrite index files if they already exist"
    mask_repeatslow_regions: "mask repeats/low complexity regions (using DustMasker)"
    add_prefixes_node: "do not add prefixes to node names when multiple trees\\nare used"
    skip_klcp_construction: "skip k-LCP construction (then restarted search only)"
    keep_temporary_files: "keep temporary files from k-mer propagation"
    autocomplete_tree_names: "autocomplete tree (names of internal nodes and FASTA\\npaths)"
    advanced_configuration_json: "[STR [STR ...]]  advanced configuration (a JSON dictionary)"
  }
  output {
    File out_stdout = stdout()
  }
}