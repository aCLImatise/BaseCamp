version 1.0

task KatPlotSpectraHist {
  input {
    String outputOutput
    String outputOutputType
    String titleTitle
    String xXLabel
    String yYLabel
    String legendLegendLabels
    String xXMin
    String yYMin
    String xXMax
    String yYMax
    String widthWidth
    String heightHeight
    Boolean xXLogScale
    Boolean yYLogScale
    String dpiDpi
    Boolean verboseVerbose
    String? histoHistoFiles
  }
  command <<<
    kat_plot_spectra_hist \
      ~{histoHistoFiles} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output_type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(xXLabel) then ("--x_label " +  '"' + xXLabel + '"') else ""} \
      ~{if defined(yYLabel) then ("--y_label " +  '"' + yYLabel + '"') else ""} \
      ~{if defined(legendLegendLabels) then ("--legend_labels " +  '"' + legendLegendLabels + '"') else ""} \
      ~{if defined(xXMin) then ("--x_min " +  '"' + xXMin + '"') else ""} \
      ~{if defined(yYMin) then ("--y_min " +  '"' + yYMin + '"') else ""} \
      ~{if defined(xXMax) then ("--x_max " +  '"' + xXMax + '"') else ""} \
      ~{if defined(yYMax) then ("--y_max " +  '"' + yYMax + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{true="--x_logscale" false="" xXLogScale} \
      ~{true="--y_logscale" false="" yYLogScale} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}