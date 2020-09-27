version 1.0

task DkfzbiasfilterSummarizepy {
  command <<<
    dkfzbiasfilter_summarize_py
  >>>
  output {
    File out_stdout = stdout()
  }
}