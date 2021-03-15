version 1.0

task GSvarFiltersCnvini {
  command <<<
    GSvar_filters_cnv_ini
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  output {
    File out_stdout = stdout()
  }
}