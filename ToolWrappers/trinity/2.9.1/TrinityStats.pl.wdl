version 1.0

task TrinityStatspl {
  command <<<
    TrinityStats_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}