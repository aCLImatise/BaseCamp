version 1.0

task PhyluceGenetreesRunRaxmlBootstraps {
  input {
    Directory? alignments
    Directory? best_trees
    Directory? output_directory_hold
    Int? boot_reps
    String? out_group
    Int? threads
    Int? cores
    Boolean? quiet
  }
  command <<<
    phyluce_genetrees_run_raxml_bootstraps \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(best_trees) then ("--best-trees " +  '"' + best_trees + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(boot_reps) then ("--bootreps " +  '"' + boot_reps + '"') else ""} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory containing alignments to be summarized."
    best_trees: "The directory containing the best trees"
    output_directory_hold: "The output directory to hold alignments"
    boot_reps: "The number of bootstrap replicates to run"
    out_group: "The outgroup to use"
    threads: "The number of RAxML threads to run (best to determine\\nempirically)"
    cores: "The number of concurrent RAxML jobs to run"
    quiet: "Suppress the CPU usage question"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_hold = "${in_output_directory_hold}"
  }
}