version 1.0

task HicPlotAverageRegions {
  input {
    String matrixMatrix
    String outputOutputFile
    Boolean log1pLog1p
    Boolean logLog
    String colormapColormap
    String vminVmin
    String vmaxVmax
    String dpiDpi
  }
  command <<<
    hicPlotAverageRegions \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--outputFile " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--log1p" false="" log1pLog1p} \
      ~{true="--log" false="" logLog} \
      ~{if defined(colormapColormap) then ("--colorMap " +  '"' + colormapColormap + '"') else ""} \
      ~{if defined(vminVmin) then ("--vMin " +  '"' + vminVmin + '"') else ""} \
      ~{if defined(vmaxVmax) then ("--vMax " +  '"' + vmaxVmax + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""}
  >>>
}