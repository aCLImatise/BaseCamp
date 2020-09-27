version 1.0

task LibStatsR {
  command <<<
    lib_stats_R
  >>>
  output {
    File out_stdout = stdout()
  }
}