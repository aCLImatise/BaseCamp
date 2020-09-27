version 1.0

task GenerateReportpycbak {
  command <<<
    generate_report_pyc_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}