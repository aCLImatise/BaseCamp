version 1.0

task BatchAnnotatePeaksHistogrampl {
  command <<<
    batchAnnotatePeaksHistogram_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}