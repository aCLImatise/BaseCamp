version 1.0

task PlotHaps {
  command <<<
    plotHaps
  >>>
  output {
    File out_stdout = stdout()
  }
}