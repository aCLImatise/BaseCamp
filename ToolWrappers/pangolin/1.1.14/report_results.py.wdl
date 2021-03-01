version 1.0

task ReportResultspy {
  command <<<
    report_results_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}