version 1.0

task PlotAggregateMatrixR {
  command <<<
    plot_aggregate_matrix_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}