version 1.0

task KatPlotSpectraCn {
  input {
    String outputOutput
    String outputOutputType
    String titleTitle
    String xXLabel
    String yYLabel
    String xXMax
    String yYMax
    String widthWidth
    String heightHeight
    Int minMinAssemblyFrequency
    Int maxMaxDup
    String coverageCoverageList
    Boolean noNoCumulative
    String dpiDpi
    Boolean verboseVerbose
    String? matrixMatrixFile
  }
  command <<<
    kat_plot_spectra_cn \
      ~{matrixMatrixFile} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output_type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(xXLabel) then ("--x_label " +  '"' + xXLabel + '"') else ""} \
      ~{if defined(yYLabel) then ("--y_label " +  '"' + yYLabel + '"') else ""} \
      ~{if defined(xXMax) then ("--x_max " +  '"' + xXMax + '"') else ""} \
      ~{if defined(yYMax) then ("--y_max " +  '"' + yYMax + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{if defined(minMinAssemblyFrequency) then ("--min_assembly_frequency " +  '"' + minMinAssemblyFrequency + '"') else ""} \
      ~{if defined(maxMaxDup) then ("--max_dup " +  '"' + maxMaxDup + '"') else ""} \
      ~{if defined(coverageCoverageList) then ("--coverage_list " +  '"' + coverageCoverageList + '"') else ""} \
      ~{true="--no_cumulative" false="" noNoCumulative} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}