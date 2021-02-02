version 1.0

task GeneFourfoldSitespy {
  command <<<
    gene_fourfold_sites_py
  >>>
  output {
    File out_stdout = stdout()
  }
}