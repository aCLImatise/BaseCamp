version 1.0

task GetStatspl {
  command <<<
    getStats_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}