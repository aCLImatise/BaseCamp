version 1.0

task PlotCorrelation {
  input {
    File cordataCordata
    String corCorMethod
    String whatWhatToPlot
    File plotPlotFile
    Boolean skipSkipZeros
    String labelsLabels
    String plotPlotTitle
    File plotPlotFileFormat
    Boolean removeRemoveOutliers
    File outfileOutfileCorMatrix
    String plotPlotHeight
    String plotPlotWidth
    String zminZmin
    String zmaxZmax
    Boolean colormapColormap
    Boolean plotPlotNumbers
    String xXRange
    String yYRange
    Boolean log1pLog1p
  }
  command <<<
    plotCorrelation \
      ~{if defined(cordataCordata) then ("--corData " +  '"' + cordataCordata + '"') else ""} \
      ~{if defined(corCorMethod) then ("--corMethod " +  '"' + corCorMethod + '"') else ""} \
      ~{if defined(whatWhatToPlot) then ("--whatToPlot " +  '"' + whatWhatToPlot + '"') else ""} \
      ~{if defined(plotPlotFile) then ("--plotFile " +  '"' + plotPlotFile + '"') else ""} \
      ~{true="--skipZeros" false="" skipSkipZeros} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(plotPlotTitle) then ("--plotTitle " +  '"' + plotPlotTitle + '"') else ""} \
      ~{if defined(plotPlotFileFormat) then ("--plotFileFormat " +  '"' + plotPlotFileFormat + '"') else ""} \
      ~{true="--removeOutliers" false="" removeRemoveOutliers} \
      ~{if defined(outfileOutfileCorMatrix) then ("--outFileCorMatrix " +  '"' + outfileOutfileCorMatrix + '"') else ""} \
      ~{if defined(plotPlotHeight) then ("--plotHeight " +  '"' + plotPlotHeight + '"') else ""} \
      ~{if defined(plotPlotWidth) then ("--plotWidth " +  '"' + plotPlotWidth + '"') else ""} \
      ~{if defined(zminZmin) then ("--zMin " +  '"' + zminZmin + '"') else ""} \
      ~{if defined(zmaxZmax) then ("--zMax " +  '"' + zmaxZmax + '"') else ""} \
      ~{true="--colorMap" false="" colormapColormap} \
      ~{true="--plotNumbers" false="" plotPlotNumbers} \
      ~{if defined(xXRange) then ("--xRange " +  '"' + xXRange + '"') else ""} \
      ~{if defined(yYRange) then ("--yRange " +  '"' + yYRange + '"') else ""} \
      ~{true="--log1p" false="" log1pLog1p}
  >>>
}