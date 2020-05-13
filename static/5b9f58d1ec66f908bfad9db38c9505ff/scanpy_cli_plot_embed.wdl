version 1.0

task ScanpyCliPlotEmbed {
  input {
    Boolean inputInputFormat
    Int figFigSize
    Int figFigDpi
    Int figFigFontSize
    Boolean frameFrameOn
    String titleTitle
    String basisBasis
    String colorColor
    Boolean useUseRaw
    Boolean legendLegendLoc
    Int legendLegendFontSize
    Float sizeSize
    String geneGeneSymbols
  }
  command <<<
    scanpy-cli plot embed \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{if defined(figFigSize) then ("--fig-size " +  '"' + figFigSize + '"') else ""} \
      ~{if defined(figFigDpi) then ("--fig-dpi " +  '"' + figFigDpi + '"') else ""} \
      ~{if defined(figFigFontSize) then ("--fig-fontsize " +  '"' + figFigFontSize + '"') else ""} \
      ~{true="--frameon" false="" frameFrameOn} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(basisBasis) then ("--basis " +  '"' + basisBasis + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{true="--use-raw" false="" useUseRaw} \
      ~{true="--legend-loc" false="" legendLegendLoc} \
      ~{if defined(legendLegendFontSize) then ("--legend-fontsize " +  '"' + legendLegendFontSize + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(geneGeneSymbols) then ("--gene-symbols " +  '"' + geneGeneSymbols + '"') else ""}
  >>>
}