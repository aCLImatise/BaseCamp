version 1.0

task InteropPlotSampleQc {
  command <<<
    interop_plot_sample_qc
  >>>
  output {
    File out_stdout = stdout()
  }
}