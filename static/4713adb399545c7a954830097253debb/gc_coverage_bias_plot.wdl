version 1.0

task GcCoverageBiasPlot {
  command <<<
    gc_coverage_bias_plot
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}