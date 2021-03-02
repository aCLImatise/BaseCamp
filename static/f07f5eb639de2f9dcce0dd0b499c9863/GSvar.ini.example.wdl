version 1.0

task GSvariniexample {
  command <<<
    GSvar_ini_example
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  output {
    File out_stdout = stdout()
  }
}