version 1.0

task PhyluceGenetreesRunRaxmlMultilocusBootstraps {
  input {
    File? best_trees
    Directory? input_directory_containing
    Directory? output_directory_hold
    Int? boot_reps
    String? out_group
    Int? threads
    Int? cores
    Boolean? quiet
    String? verbosity
    File? log_path
    String format
  }
  command <<<
    phyluce_genetrees_run_raxml_multilocus_bootstraps \
      ~{format} \
      ~{if (best_trees) then "--best-trees" else ""} \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(boot_reps) then ("--bootreps " +  '"' + boot_reps + '"') else ""} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    best_trees: "BEST_TREES --output\\nOUTPUT\\n[--bootreps BOOTREPS]\\n[--outgroup OUTGROUP]\\n[--threads THREADS]\\n[--cores CORES]\\n[--quiet]\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH]"
    input_directory_containing: "The input directory containing alignments in phylip"
    output_directory_hold: "The output directory to hold alignments"
    boot_reps: "The number of bootstrap replicates to run"
    out_group: "The outgroup to use"
    threads: "The number of RAxML threads to run (best to determine\\nempirically)"
    cores: "The number of concurrent RAxML jobs to run"
    quiet: "Suppress the CPU usage question"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    format: "--best-trees BEST_TREES"
  }
  output {
    File out_stdout = stdout()
    File out_best_trees = "${in_best_trees}"
    Directory out_output_directory_hold = "${in_output_directory_hold}"
  }
}