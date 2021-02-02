version 1.0

task DownloadTaxaNcbipy {
  command <<<
    download_taxa_ncbi_py
  >>>
  output {
    File out_stdout = stdout()
  }
}