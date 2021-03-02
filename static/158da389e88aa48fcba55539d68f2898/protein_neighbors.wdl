version 1.0

task Proteinneighbors {
  command <<<
    protein_neighbors
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}