version 1.0

task Gene2proteindb3 {
  command <<<
    gene2protein_db3
  >>>
  output {
    File out_stdout = stdout()
  }
}