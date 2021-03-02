version 1.0

task Downloadncbitaxash {
  command <<<
    download_ncbi_taxa_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  output {
    File out_stdout = stdout()
  }
}