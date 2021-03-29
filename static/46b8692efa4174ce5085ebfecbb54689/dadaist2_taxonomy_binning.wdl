version 1.0

task Dadaist2taxonomybinning {
  command <<<
    dadaist2_taxonomy_binning
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}