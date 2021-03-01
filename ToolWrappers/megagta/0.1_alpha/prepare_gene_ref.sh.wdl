version 1.0

task PrepareGeneRefsh {
  command <<<
    prepare_gene_ref_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}