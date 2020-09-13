version 1.0

task AnviscriptgenStatsForSingleCopyGenesREADME {
  command <<<
    anvi_script_gen_stats_for_single_copy_genes_README
  >>>
  output {
    File out_stdout = stdout()
  }
}