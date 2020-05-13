version 1.0

task PlotPCA {
  input {
    Boolean transposeTranspose
    Boolean rowRowCenter
    File cordataCordata
    File plotPlotFile
    String labelsLabels
    String plotPlotTitle
    File plotPlotFileFormat
    String plotPlotHeight
    String plotPlotWidth
    File outOutFilenameData
    String ntopNtop
    String pcsPcs
    Boolean log2Log2
    Array[String]+ colorsColors
    Array[String]+ markersMarkers
  }
  command <<<
    plotPCA \
      ~{true="--transpose" false="" transposeTranspose} \
      ~{true="--rowCenter" false="" rowRowCenter} \
      ~{if defined(cordataCordata) then ("--corData " +  '"' + cordataCordata + '"') else ""} \
      ~{if defined(plotPlotFile) then ("--plotFile " +  '"' + plotPlotFile + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(plotPlotTitle) then ("--plotTitle " +  '"' + plotPlotTitle + '"') else ""} \
      ~{if defined(plotPlotFileFormat) then ("--plotFileFormat " +  '"' + plotPlotFileFormat + '"') else ""} \
      ~{if defined(plotPlotHeight) then ("--plotHeight " +  '"' + plotPlotHeight + '"') else ""} \
      ~{if defined(plotPlotWidth) then ("--plotWidth " +  '"' + plotPlotWidth + '"') else ""} \
      ~{if defined(outOutFilenameData) then ("--outFileNameData " +  '"' + outOutFilenameData + '"') else ""} \
      ~{if defined(ntopNtop) then ("--ntop " +  '"' + ntopNtop + '"') else ""} \
      ~{if defined(pcsPcs) then ("--PCs " +  '"' + pcsPcs + '"') else ""} \
      ~{true="--log2" false="" log2Log2} \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(markersMarkers) then ("--markers " +  '"' + markersMarkers + '"') else ""}
  >>>
}