version 1.0

task Downloadncbitaxash {
  command <<<
    download_ncbi_taxa_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}