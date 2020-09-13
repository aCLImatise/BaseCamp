version 1.0

task FitR {
  command <<<
    fit_R
  >>>
  output {
    File out_stdout = stdout()
  }
}