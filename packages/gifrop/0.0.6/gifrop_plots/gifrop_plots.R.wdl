version 1.0

task GifropPlotsR {
  command <<<
    gifrop_plots_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.6--0"
  }
  output {
    File out_stdout = stdout()
  }
}