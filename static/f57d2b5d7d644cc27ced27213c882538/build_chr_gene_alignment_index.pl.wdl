version 1.0

task BuildChrGeneAlignmentIndexpl {
  command <<<
    build_chr_gene_alignment_index_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}