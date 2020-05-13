version 1.0

task KatPlotCold {
  input {
    String outputOutput
    String outputOutputType
    String titleTitle
    String yYMax
    String widthWidth
    String heightHeight
    String dpiDpi
    Boolean verboseVerbose
    String? statsStatsFile
  }
  command <<<
    kat_plot_cold \
      ~{statsStatsFile} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output_type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(yYMax) then ("--y_max " +  '"' + yYMax + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}