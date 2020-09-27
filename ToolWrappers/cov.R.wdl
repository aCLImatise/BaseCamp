version 1.0

task CovR {
  command <<<
    cov_R
  >>>
  output {
    File out_stdout = stdout()
  }
}