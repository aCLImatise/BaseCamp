version 1.0

task Settingsiniexample {
  command <<<
    settings_ini_example
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  output {
    File out_stdout = stdout()
  }
}