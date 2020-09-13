version 1.0

task NcrfSummarypy {
  command <<<
    ncrf_summary_py
  >>>
  output {
    File out_stdout = stdout()
  }
}