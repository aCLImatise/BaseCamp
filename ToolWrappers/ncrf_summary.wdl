version 1.0

task NcrfSummary {
  command <<<
    ncrf_summary
  >>>
  output {
    File out_stdout = stdout()
  }
}