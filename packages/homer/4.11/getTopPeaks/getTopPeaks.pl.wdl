version 1.0

task GetTopPeakspl {
  command <<<
    getTopPeaks_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}