version 1.0

task PhyluceGenetreesRunRaxmlBootstraps {
  input {
    String? best_trees
    Directory? alignments
    Int? boot_reps
    String? out_group
    Int? threads
    Int? cores
    Boolean? quiet
  }
  command <<<
    phyluce_genetrees_run_raxml_bootstraps \
      ~{if defined(best_trees) then ("--best-trees " +  '"' + best_trees + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(boot_reps) then ("--bootreps " +  '"' + boot_reps + '"') else ""} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    best_trees: "OUTPUT [--bootreps BOOTREPS]\\n[--outgroup OUTGROUP]\\n[--threads THREADS]\\n[--cores CORES] [--quiet]"
    alignments: "The directory containing alignments to be summarized."
    boot_reps: "The number of bootstrap replicates to run"
    out_group: "The outgroup to use"
    threads: "The number of RAxML threads to run (best to determine\\nempirically)"
    cores: "The number of concurrent RAxML jobs to run"
    quiet: "Suppress the CPU usage question"
  }
  output {
    File out_stdout = stdout()
  }
}