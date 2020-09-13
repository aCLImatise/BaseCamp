version 1.0

task TrinityStatspl {
  command <<<
    TrinityStats_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}