version 1.0

task GeneNameOccurances {
  command <<<
    gene_name_occurances
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}