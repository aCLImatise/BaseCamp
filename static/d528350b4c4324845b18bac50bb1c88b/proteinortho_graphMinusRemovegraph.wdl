version 1.0

task ProteinorthoGraphMinusRemovegraph {
  command <<<
    proteinortho_graphMinusRemovegraph
  >>>
  output {
    File out_stdout = stdout()
  }
}