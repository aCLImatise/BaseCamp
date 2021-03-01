version 1.0

task GeneOrderpl {
  command <<<
    gene_order_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}