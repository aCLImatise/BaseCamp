version 1.0

task GetStatspl {
  command <<<
    getStats_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}