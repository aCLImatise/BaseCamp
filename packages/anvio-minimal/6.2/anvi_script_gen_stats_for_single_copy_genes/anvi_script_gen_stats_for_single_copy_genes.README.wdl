version 1.0

task AnviscriptgenStatsForSingleCopyGenesREADME {
  command <<<
    anvi_script_gen_stats_for_single_copy_genes_README
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}