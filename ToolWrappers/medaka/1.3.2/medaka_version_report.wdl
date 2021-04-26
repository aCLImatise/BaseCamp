version 1.0

task MedakaVersionReport {
  command <<<
    medaka_version_report
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.3.2--py38h130def0_0"
  }
  output {
    File out_stdout = stdout()
  }
}