version 1.0

task MedakaVersionReport {
  command <<<
    medaka_version_report
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.6--py38h64b100c_0"
  }
  output {
    File out_stdout = stdout()
  }
}