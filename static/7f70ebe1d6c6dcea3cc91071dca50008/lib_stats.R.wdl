version 1.0

task LibStatsR {
  command <<<
    lib_stats_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}