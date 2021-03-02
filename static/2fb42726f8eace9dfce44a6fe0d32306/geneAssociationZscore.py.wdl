version 1.0

task GeneAssociationZscorepy {
  command <<<
    geneAssociationZscore_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}