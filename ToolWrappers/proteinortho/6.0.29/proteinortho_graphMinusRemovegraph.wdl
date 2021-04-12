version 1.0

task ProteinorthoGraphMinusRemovegraph {
  command <<<
    proteinortho_graphMinusRemovegraph
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteinortho:6.0.29--hb0e25da_1"
  }
  output {
    File out_stdout = stdout()
  }
}