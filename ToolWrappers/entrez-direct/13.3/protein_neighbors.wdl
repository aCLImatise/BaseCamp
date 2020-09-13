version 1.0

task Proteinneighbors {
  command <<<
    protein_neighbors
  >>>
  output {
    File out_stdout = stdout()
  }
}