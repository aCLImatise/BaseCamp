version 1.0

task Downloaduniprottaxash {
  command <<<
    download_uniprot_taxa_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}