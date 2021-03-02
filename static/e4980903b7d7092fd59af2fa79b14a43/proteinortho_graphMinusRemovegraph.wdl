version 1.0

task ProteinorthoGraphMinusRemovegraph {
  command <<<
    proteinortho_graphMinusRemovegraph
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteinortho:6.0.28--hfd40d39_0"
  }
  output {
    File out_stdout = stdout()
  }
}