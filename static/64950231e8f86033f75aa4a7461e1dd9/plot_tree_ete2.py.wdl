version 1.0

task PlotTreeEte2py {
  command <<<
    plot_tree_ete2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}