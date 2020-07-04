version 1.0

task PhyluceGenetreesRunRaxmlMultilocusBootstraps {
  input {
    String? input_directory_containing
    String? best_trees
    String? output_directory_hold
    String? boot_reps
    String? out_group
    String? threads
    String? cores
    Boolean? quiet
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_genetrees_run_raxml_multilocus_bootstraps \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(best_trees) then ("--best-trees " +  '"' + best_trees + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(boot_reps) then ("--bootreps " +  '"' + boot_reps + '"') else ""} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    input_directory_containing: "The input directory containing alignments in phylip format"
    best_trees: "The directory containing the best trees"
    output_directory_hold: "The output directory to hold alignments"
    boot_reps: "The number of bootstrap replicates to run"
    out_group: "The outgroup to use"
    threads: "The number of RAxML threads to run (best to determine empirically)"
    cores: "The number of concurrent RAxML jobs to run"
    quiet: "Suppress the CPU usage question"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}