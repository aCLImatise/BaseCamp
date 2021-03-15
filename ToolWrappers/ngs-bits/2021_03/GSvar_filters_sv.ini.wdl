version 1.0

task GSvarFiltersSvini {
  command <<<
    GSvar_filters_sv_ini
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  output {
    File out_stdout = stdout()
  }
}