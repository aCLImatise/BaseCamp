version 1.0

task TflocSummarypy {
  command <<<
    tfloc_summary_py
  >>>
  output {
    File out_stdout = stdout()
  }
}