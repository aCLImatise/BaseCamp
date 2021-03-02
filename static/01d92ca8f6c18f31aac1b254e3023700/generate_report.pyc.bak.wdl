version 1.0

task GenerateReportpycbak {
  command <<<
    generate_report_pyc_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}