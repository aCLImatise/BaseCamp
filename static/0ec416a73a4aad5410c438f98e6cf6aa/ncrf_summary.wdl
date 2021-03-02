version 1.0

task NcrfSummary {
  command <<<
    ncrf_summary
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}