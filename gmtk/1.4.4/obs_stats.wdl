version 1.0

task Obsstats {
  command <<<
    obs_stats
  >>>
  output {
    File out_stdout = stdout()
  }
}