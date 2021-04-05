version 1.0

task WriteReportRmd {
  command <<<
    write_report_Rmd
  >>>
  runtime {
    docker: "quay.io/biocontainers/aquamis:1.3.4--0"
  }
  output {
    File out_stdout = stdout()
  }
}