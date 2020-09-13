version 1.0

task MedakaVersionReport {
  command <<<
    medaka_version_report
  >>>
  output {
    File out_stdout = stdout()
  }
}