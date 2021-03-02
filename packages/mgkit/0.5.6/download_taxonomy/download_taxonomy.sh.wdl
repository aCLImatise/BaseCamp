version 1.0

task Downloadtaxonomysh {
  command <<<
    download_taxonomy_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  output {
    File out_stdout = stdout()
  }
}