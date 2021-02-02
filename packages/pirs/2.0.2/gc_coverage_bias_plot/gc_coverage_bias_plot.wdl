version 1.0

task GcCoverageBiasPlot {
  command <<<
    gc_coverage_bias_plot
  >>>
  output {
    File out_stdout = stdout()
  }
}