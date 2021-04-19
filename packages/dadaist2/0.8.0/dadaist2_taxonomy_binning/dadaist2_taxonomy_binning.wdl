version 1.0

task Dadaist2taxonomybinning {
  command <<<
    dadaist2_taxonomy_binning
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}