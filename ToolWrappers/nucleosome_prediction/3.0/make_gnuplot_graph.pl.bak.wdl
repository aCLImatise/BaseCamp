version 1.0

task MakeGnuplotGraphplbak {
  command <<<
    make_gnuplot_graph_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}