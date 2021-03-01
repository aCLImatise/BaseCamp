version 1.0

task MedakaVersionReport {
  command <<<
    medaka_version_report
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0"
  }
  output {
    File out_stdout = stdout()
  }
}