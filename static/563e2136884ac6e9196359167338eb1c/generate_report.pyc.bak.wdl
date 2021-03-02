version 1.0

task GenerateReportpycbak {
  command <<<
    generate_report_pyc_bak
  >>>
  runtime {
    docker: "quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0"
  }
  output {
    File out_stdout = stdout()
  }
}