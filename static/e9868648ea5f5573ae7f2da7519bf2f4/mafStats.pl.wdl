version 1.0

task MafStatspl {
  command <<<
    mafStats_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}