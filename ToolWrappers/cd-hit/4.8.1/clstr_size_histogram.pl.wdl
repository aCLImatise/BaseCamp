version 1.0

task ClstrSizeHistogrampl {
  command <<<
    clstr_size_histogram_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}