version 1.0

task GifropPlotsR {
  command <<<
    gifrop_plots_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}