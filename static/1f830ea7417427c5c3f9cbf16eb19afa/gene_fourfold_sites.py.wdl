version 1.0

task GeneFourfoldSitespy {
  command <<<
    gene_fourfold_sites_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}