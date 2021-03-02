version 1.0

task PlotHaps {
  command <<<
    plotHaps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}