version 1.0

task GenomeLenFilterStatspl {
  command <<<
    genome_LenFilter_stats_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}