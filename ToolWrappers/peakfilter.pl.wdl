version 1.0

task Peakfilterpl {
  command <<<
    peakfilter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}