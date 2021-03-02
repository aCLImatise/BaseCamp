version 1.0

task Fithistogramr {
  command <<<
    fit_histogram_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}