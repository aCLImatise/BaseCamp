version 1.0

task Downloadncbitaxash {
  command <<<
    download_ncbi_taxa_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}