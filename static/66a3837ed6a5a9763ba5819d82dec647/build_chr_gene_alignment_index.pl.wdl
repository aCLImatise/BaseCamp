version 1.0

task BuildChrGeneAlignmentIndexpl {
  command <<<
    build_chr_gene_alignment_index_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}