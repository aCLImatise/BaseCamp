version 1.0

task Downloadtaxonomysh {
  command <<<
    download_taxonomy_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}