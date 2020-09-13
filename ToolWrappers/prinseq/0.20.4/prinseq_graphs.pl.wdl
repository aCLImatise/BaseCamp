version 1.0

task Prinseqgraphspl {
  command <<<
    prinseq_graphs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}