version 1.0

task GSvarFiltersini {
  command <<<
    GSvar_filters_ini
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  output {
    File out_stdout = stdout()
  }
}