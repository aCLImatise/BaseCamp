version 1.0

task PlotHaplotypesR {
  command <<<
    plotHaplotypes_R
  >>>
  output {
    File out_stdout = stdout()
  }
}