version 1.0

task KatPlotDensity {
  input {
    Boolean notNotRasterIsEd
    String dpiDpi
    Boolean verboseVerbose
    String? matrixMatrixFile
  }
  command <<<
    kat_plot_density \
      ~{matrixMatrixFile} \
      ~{true="--not_rasterised" false="" notNotRasterIsEd} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}