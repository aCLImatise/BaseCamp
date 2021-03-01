version 1.0

task PlotMappingSummaryR {
  command <<<
    plotMappingSummary_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}