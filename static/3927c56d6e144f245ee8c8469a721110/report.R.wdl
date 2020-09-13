version 1.0

task ReportR {
  command <<<
    report_R
  >>>
  output {
    File out_stdout = stdout()
  }
}