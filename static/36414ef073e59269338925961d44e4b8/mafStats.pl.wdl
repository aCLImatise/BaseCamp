version 1.0

task MafStatspl {
  command <<<
    mafStats_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}