version 1.0

task PlotAlignmentTreepy {
  command <<<
    plot_alignment_tree_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}