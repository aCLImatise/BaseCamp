version 1.0

task ProteinorthoGraphMinusRemovegraph {
  command <<<
    proteinortho_graphMinusRemovegraph
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}