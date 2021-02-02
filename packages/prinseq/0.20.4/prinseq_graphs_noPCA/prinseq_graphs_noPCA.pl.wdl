version 1.0

task PrinseqgraphsnoPCApl {
  command <<<
    prinseq_graphs_noPCA_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}