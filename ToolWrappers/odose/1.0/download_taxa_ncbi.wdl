version 1.0

task DownloadTaxaNcbi {
  command <<<
    download_taxa_ncbi
  >>>
  output {
    File out_stdout = stdout()
  }
}