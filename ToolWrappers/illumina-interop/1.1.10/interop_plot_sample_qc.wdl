version 1.0

task InteropPlotSampleQc {
  command <<<
    interop_plot_sample_qc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}