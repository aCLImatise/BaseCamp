version 1.0

task PlotSmoothedR {
  command <<<
    plotSmoothed_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  output {
    File out_stdout = stdout()
  }
}