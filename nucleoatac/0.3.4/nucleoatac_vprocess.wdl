version 1.0

task NucleoatacVprocess {
  input {
    File sizesSizes
    String vVPlot
    Int lowerLower
    Int upperUpper
    Int flankFlank
    Float smoothSmooth
    Boolean plotPlotExtra
  }
  command <<<
    nucleoatac vprocess \
      ~{if defined(sizesSizes) then ("--sizes " +  '"' + sizesSizes + '"') else ""} \
      ~{if defined(vVPlot) then ("--vplot " +  '"' + vVPlot + '"') else ""} \
      ~{if defined(lowerLower) then ("--lower " +  '"' + lowerLower + '"') else ""} \
      ~{if defined(upperUpper) then ("--upper " +  '"' + upperUpper + '"') else ""} \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""} \
      ~{if defined(smoothSmooth) then ("--smooth " +  '"' + smoothSmooth + '"') else ""} \
      ~{true="--plot_extra" false="" plotPlotExtra}
  >>>
}