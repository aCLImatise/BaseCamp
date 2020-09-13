version 1.0

task ReportResultspy {
  command <<<
    report_results_py
  >>>
  output {
    File out_stdout = stdout()
  }
}