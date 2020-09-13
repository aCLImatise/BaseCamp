version 1.0

task RunGubbinspy {
  input {
    String? out_group
    String? starting_tree
    Boolean? use_time_stamp
    Boolean? verbose
    Boolean? no_cleanup
    String? tree_builder
    Int? iterations
    Int? min_snps
    Int? filter_percentage
    String? prefix
    Int? threads
    String? converge_method
    Int? min_window_size
    Int? max_window_size
    String? ra_xml_model
    Boolean? remove_identical_sequences
    String croucher_n_j
    Float one_zero_dot_one_zero_nine_three_slash_narslashgkuoneoneninesix_dot
    String multifasta_alignment_file
  }
  command <<<
    run_gubbins_py \
      ~{croucher_n_j} \
      ~{one_zero_dot_one_zero_nine_three_slash_narslashgkuoneoneninesix_dot} \
      ~{multifasta_alignment_file} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if defined(starting_tree) then ("--starting_tree " +  '"' + starting_tree + '"') else ""} \
      ~{if (use_time_stamp) then "--use_time_stamp" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_cleanup) then "--no_cleanup" else ""} \
      ~{if defined(tree_builder) then ("--tree_builder " +  '"' + tree_builder + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(min_snps) then ("--min_snps " +  '"' + min_snps + '"') else ""} \
      ~{if defined(filter_percentage) then ("--filter_percentage " +  '"' + filter_percentage + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(converge_method) then ("--converge_method " +  '"' + converge_method + '"') else ""} \
      ~{if defined(min_window_size) then ("--min_window_size " +  '"' + min_window_size + '"') else ""} \
      ~{if defined(max_window_size) then ("--max_window_size " +  '"' + max_window_size + '"') else ""} \
      ~{if defined(ra_xml_model) then ("--raxml_model " +  '"' + ra_xml_model + '"') else ""} \
      ~{if (remove_identical_sequences) then "--remove_identical_sequences" else ""}
  >>>
  parameter_meta {
    out_group: "Outgroup name for rerooting. A list of comma separated\\nnames can be used if they form a clade (default: None)"
    starting_tree: "Starting tree (default: None)"
    use_time_stamp: "Use a time stamp in file names (default: False)"
    verbose: "Turn on debugging (default: False)"
    no_cleanup: "Dont cleanup intermediate files (default: False)"
    tree_builder: "Application to use for tree building (default: raxml)"
    iterations: "Maximum No. of iterations (default: 5)"
    min_snps: "Min SNPs to identify a recombination block (default:\\n3)"
    filter_percentage: "Filter out taxa with more than this percentage of gaps\\n(default: 25)"
    prefix: "Add a prefix to the final output filenames (default:\\nNone)"
    threads: "Number of threads to run with RAXML, but only if a\\nPTHREADS version is available (default: 1)"
    converge_method: "Criteria to use to know when to halt iterations\\n(default: weighted_robinson_foulds)"
    min_window_size: "Minimum window size (default: 100)"
    max_window_size: "Maximum window size (default: 10000)"
    ra_xml_model: "RAxML model (default: GTRCAT)"
    remove_identical_sequences: "Remove identical sequences (default: False)\\n"
    croucher_n_j: "Croucher N. J., Page A. J., Connor T. R., Delaney A. J., Keane J. A., Bentley"
    one_zero_dot_one_zero_nine_three_slash_narslashgkuoneoneninesix_dot: "positional arguments:"
    multifasta_alignment_file: "Multifasta alignment file"
  }
  output {
    File out_stdout = stdout()
  }
}