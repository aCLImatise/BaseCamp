version 1.0

task AnviscriptgenStatsForSingleCopyGenessh {
  command <<<
    anvi_script_gen_stats_for_single_copy_genes_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}