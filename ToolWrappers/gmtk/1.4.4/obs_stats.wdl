version 1.0

task Obsstats {
  command <<<
    obs_stats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}