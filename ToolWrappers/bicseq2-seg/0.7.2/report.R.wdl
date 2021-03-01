version 1.0

task ReportR {
  command <<<
    report_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}