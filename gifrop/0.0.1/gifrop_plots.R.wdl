version 1.0

task GifropPlotsR {
  command <<<
    gifrop_plots_R
  >>>
  output {
    File out_stdout = stdout()
  }
}