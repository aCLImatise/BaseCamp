version 1.0

task PrinseqgraphsnoPCApl {
  command <<<
    prinseq_graphs_noPCA_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}