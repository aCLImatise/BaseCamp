version 1.0

task Gene2proteindb3 {
  command <<<
    gene2protein_db3
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}