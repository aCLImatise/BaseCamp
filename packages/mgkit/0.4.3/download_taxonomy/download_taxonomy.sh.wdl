version 1.0

task Downloadtaxonomysh {
  command <<<
    download_taxonomy_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}