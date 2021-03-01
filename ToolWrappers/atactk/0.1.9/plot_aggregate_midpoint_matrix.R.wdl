version 1.0

task PlotAggregateMidpointMatrixR {
  command <<<
    plot_aggregate_midpoint_matrix_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/atactk:0.1.9--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}