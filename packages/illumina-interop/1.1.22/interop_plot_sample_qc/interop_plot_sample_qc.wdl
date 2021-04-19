version 1.0

task InteropPlotSampleQc {
  command <<<
    interop_plot_sample_qc
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-interop:1.1.22--h1b792b2_0"
  }
  output {
    File out_stdout = stdout()
  }
}