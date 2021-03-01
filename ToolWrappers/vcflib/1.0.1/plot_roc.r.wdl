version 1.0

task PlotRocr {
  command <<<
    plot_roc_r
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  output {
    File out_stdout = stdout()
  }
}