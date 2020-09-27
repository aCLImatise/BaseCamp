version 1.0

task DriveReportissue {
  command <<<
    drive report_issue
  >>>
  output {
    File out_stdout = stdout()
  }
}