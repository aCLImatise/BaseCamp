version 1.0

task NcrfSummarypy {
  command <<<
    ncrf_summary_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}