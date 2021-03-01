version 1.0

task PlotHapLrtR {
  command <<<
    plotHapLrt_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}