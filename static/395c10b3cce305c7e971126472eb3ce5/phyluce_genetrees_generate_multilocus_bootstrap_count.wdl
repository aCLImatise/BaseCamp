version 1.0

task PhyluceGenetreesGenerateMultilocusBootstrapCount {
  input {
    String? alignments
    String? bootstrap_replicates
    Directory? directory
    String? bootstrap_counts
    String? boot_reps
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_genetrees_generate_multilocus_bootstrap_count \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(bootstrap_replicates) then ("--bootstrap_replicates " +  '"' + bootstrap_replicates + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(bootstrap_counts) then ("--bootstrap_counts " +  '"' + bootstrap_counts + '"') else ""} \
      ~{if defined(boot_reps) then ("--bootreps " +  '"' + boot_reps + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The input directory containing alignments in phylip format"
    bootstrap_replicates: "The file that will hold bootstrap replicates sampling"
    directory: "Optional path to directory containing alignments. Defaults to alignment directory if not provided."
    bootstrap_counts: "The CSV file that will hold bootstrap replicate counts for each locus"
    boot_reps: "The number of bootstrap replicates to run"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}