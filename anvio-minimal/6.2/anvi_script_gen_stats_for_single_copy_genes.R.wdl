version 1.0

task AnviscriptgenStatsForSingleCopyGenesR {
  command <<<
    anvi_script_gen_stats_for_single_copy_genes_R
  >>>
  output {
    File out_stdout = stdout()
  }
}