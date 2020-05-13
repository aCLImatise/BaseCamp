version 1.0

task PlotProfile {
  input {
    String matrixMatrixFile
    String outOutFilename
    File outfileOutfileSortedRegions
    String outOutFilenameData
    String dpiDpi
    String kKMeans
    String hcHcLust
    Boolean silhouetteSilhouette
    String averageAverageType
    String plotPlotHeight
    String plotPlotWidth
    String plotPlotType
    Array[String]+ colorsColors
    String numNumPlotsPerrow
    Array[String]+ clusterClusterUsingSamples
    String startStartLabel
    String endEndLabel
    String refRefPointLabel
    String labelLabelRotation
    Array[String]+ regionsRegionsLabel
    Array[String]+ samplesSamplesLabel
    String plotPlotTitle
    String yaxisYaxisLabel
    Array[String]+ yminYmin
    Array[String]+ ymaxYmax
    String legendLegendLocation
    Boolean perPerGroup
    Boolean plotPlotFileFormat
    Boolean verboseVerbose
  }
  command <<<
    plotProfile \
      ~{if defined(matrixMatrixFile) then ("--matrixFile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(outfileOutfileSortedRegions) then ("--outFileSortedRegions " +  '"' + outfileOutfileSortedRegions + '"') else ""} \
      ~{if defined(outOutFilenameData) then ("--outFileNameData " +  '"' + outOutFilenameData + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(kKMeans) then ("--kmeans " +  '"' + kKMeans + '"') else ""} \
      ~{if defined(hcHcLust) then ("--hclust " +  '"' + hcHcLust + '"') else ""} \
      ~{true="--silhouette" false="" silhouetteSilhouette} \
      ~{if defined(averageAverageType) then ("--averageType " +  '"' + averageAverageType + '"') else ""} \
      ~{if defined(plotPlotHeight) then ("--plotHeight " +  '"' + plotPlotHeight + '"') else ""} \
      ~{if defined(plotPlotWidth) then ("--plotWidth " +  '"' + plotPlotWidth + '"') else ""} \
      ~{if defined(plotPlotType) then ("--plotType " +  '"' + plotPlotType + '"') else ""} \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(numNumPlotsPerrow) then ("--numPlotsPerRow " +  '"' + numNumPlotsPerrow + '"') else ""} \
      ~{if defined(clusterClusterUsingSamples) then ("--clusterUsingSamples " +  '"' + clusterClusterUsingSamples + '"') else ""} \
      ~{if defined(startStartLabel) then ("--startLabel " +  '"' + startStartLabel + '"') else ""} \
      ~{if defined(endEndLabel) then ("--endLabel " +  '"' + endEndLabel + '"') else ""} \
      ~{if defined(refRefPointLabel) then ("--refPointLabel " +  '"' + refRefPointLabel + '"') else ""} \
      ~{if defined(labelLabelRotation) then ("--labelRotation " +  '"' + labelLabelRotation + '"') else ""} \
      ~{if defined(regionsRegionsLabel) then ("--regionsLabel " +  '"' + regionsRegionsLabel + '"') else ""} \
      ~{if defined(samplesSamplesLabel) then ("--samplesLabel " +  '"' + samplesSamplesLabel + '"') else ""} \
      ~{if defined(plotPlotTitle) then ("--plotTitle " +  '"' + plotPlotTitle + '"') else ""} \
      ~{if defined(yaxisYaxisLabel) then ("--yAxisLabel " +  '"' + yaxisYaxisLabel + '"') else ""} \
      ~{if defined(yminYmin) then ("--yMin " +  '"' + yminYmin + '"') else ""} \
      ~{if defined(ymaxYmax) then ("--yMax " +  '"' + ymaxYmax + '"') else ""} \
      ~{if defined(legendLegendLocation) then ("--legendLocation " +  '"' + legendLegendLocation + '"') else ""} \
      ~{true="--perGroup" false="" perPerGroup} \
      ~{true="--plotFileFormat" false="" plotPlotFileFormat} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}