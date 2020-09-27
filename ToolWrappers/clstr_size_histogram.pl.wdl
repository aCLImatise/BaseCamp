version 1.0

task ClstrSizeHistogrampl {
  command <<<
    clstr_size_histogram_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}