version 1.0

task PlotMappingSummaryR {
  command <<<
    plotMappingSummary_R
  >>>
  output {
    File out_stdout = stdout()
  }
}