version 1.0

task TomboPlot {
  command <<<
    tombo plot
  >>>
  output {
    File out_stdout = stdout()
  }
}