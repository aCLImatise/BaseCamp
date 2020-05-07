version 1.0

task RefinemOutliers {
  input {
    Int gcGcPerc
    Int tdTdPerc
    String covCovCorr
    Int covCovPerc
    String reportReportType
    Boolean createCreatePlots
    Boolean individualIndividualPlots
    String imageImageType
    String pointPointSize
    String highlightHighlightFile
    String linksLinksFile
    String dpiDpi
    String labelLabelFontSize
    String tickTickFontSize
    String widthWidth
    String heightHeight
    Boolean silentSilent
    String? scaffoldScaffoldStatsFile
    String? outputOutputDir
  }
  command <<<
    refinem outliers \
      ~{scaffoldScaffoldStatsFile} \
      ~{if defined(gcGcPerc) then ("--gc_perc " +  '"' + gcGcPerc + '"') else ""} \
      ~{if defined(tdTdPerc) then ("--td_perc " +  '"' + tdTdPerc + '"') else ""} \
      ~{if defined(covCovCorr) then ("--cov_corr " +  '"' + covCovCorr + '"') else ""} \
      ~{if defined(covCovPerc) then ("--cov_perc " +  '"' + covCovPerc + '"') else ""} \
      ~{if defined(reportReportType) then ("--report_type " +  '"' + reportReportType + '"') else ""} \
      ~{true="--create_plots" false="" createCreatePlots} \
      ~{true="--individual_plots" false="" individualIndividualPlots} \
      ~{if defined(imageImageType) then ("--image_type " +  '"' + imageImageType + '"') else ""} \
      ~{if defined(pointPointSize) then ("--point_size " +  '"' + pointPointSize + '"') else ""} \
      ~{if defined(highlightHighlightFile) then ("--highlight_file " +  '"' + highlightHighlightFile + '"') else ""} \
      ~{if defined(linksLinksFile) then ("--links_file " +  '"' + linksLinksFile + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(labelLabelFontSize) then ("--label_font_size " +  '"' + labelLabelFontSize + '"') else ""} \
      ~{if defined(tickTickFontSize) then ("--tick_font_size " +  '"' + tickTickFontSize + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{outputOutputDir}
  >>>
}