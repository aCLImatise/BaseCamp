version 1.0

task Fithistogramrbak {
  command <<<
    fit_histogram_r_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}