version 1.0

task PlotprotR {
  command <<<
    plotprot_R
  >>>
  output {
    File out_stdout = stdout()
  }
}