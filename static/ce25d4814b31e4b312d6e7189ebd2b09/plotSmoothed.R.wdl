version 1.0

task PlotSmoothedR {
  command <<<
    plotSmoothed_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  output {
    File out_stdout = stdout()
  }
}