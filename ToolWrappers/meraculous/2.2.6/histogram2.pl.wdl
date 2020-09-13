version 1.0

task Histogram2pl {
  command <<<
    histogram2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}