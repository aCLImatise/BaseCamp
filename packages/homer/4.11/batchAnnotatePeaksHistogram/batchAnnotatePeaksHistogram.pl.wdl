version 1.0

task BatchAnnotatePeaksHistogrampl {
  command <<<
    batchAnnotatePeaksHistogram_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}