version 1.0

task SashimiPlot {
  input {
    String plotPlotInsertLen
    String plotPlotBfDist
    String plotPlotEvent
    Boolean noNoPosteriors
    String plotPlotTitle
    String plotPlotLabel
    String outputOutputDir
    String groupGroupInfo
  }
  command <<<
    sashimi_plot \
      ~{if defined(plotPlotInsertLen) then ("--plot-insert-len " +  '"' + plotPlotInsertLen + '"') else ""} \
      ~{if defined(plotPlotBfDist) then ("--plot-bf-dist " +  '"' + plotPlotBfDist + '"') else ""} \
      ~{if defined(plotPlotEvent) then ("--plot-event " +  '"' + plotPlotEvent + '"') else ""} \
      ~{true="--no-posteriors" false="" noNoPosteriors} \
      ~{if defined(plotPlotTitle) then ("--plot-title " +  '"' + plotPlotTitle + '"') else ""} \
      ~{if defined(plotPlotLabel) then ("--plot-label " +  '"' + plotPlotLabel + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(groupGroupInfo) then ("--group-info " +  '"' + groupGroupInfo + '"') else ""}
  >>>
}