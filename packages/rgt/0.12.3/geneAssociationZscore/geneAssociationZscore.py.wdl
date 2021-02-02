version 1.0

task GeneAssociationZscorepy {
  command <<<
    geneAssociationZscore_py
  >>>
  output {
    File out_stdout = stdout()
  }
}