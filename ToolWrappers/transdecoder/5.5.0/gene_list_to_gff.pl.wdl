version 1.0

task GeneListToGffpl {
  command <<<
    gene_list_to_gff_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}