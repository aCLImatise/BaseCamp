version 1.0

task ScanpyCliPlotPaga {
  input {
    Boolean inputInputFormat
    Int figFigSize
    Int figFigDpi
    Int figFigFontSize
    Boolean frameFrameOn
    String titleTitle
    String useUseKey
    Boolean layoutLayout
    String inInItPos
    Float thresholdThreshold
    Int rootRoot
    String transitionsTransitions
    Boolean singleSingleComponent
    Boolean solidSolidEdges
    String basisBasis
    String colorColor
    Boolean legendLegendLoc
    Float sizeSize
    Float nodeNodeSizeScale
    Int fontFontSize
    Float edgeEdgeWidthScale
    Int arrowsizeArrowsize
  }
  command <<<
    scanpy-cli plot paga \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{if defined(figFigSize) then ("--fig-size " +  '"' + figFigSize + '"') else ""} \
      ~{if defined(figFigDpi) then ("--fig-dpi " +  '"' + figFigDpi + '"') else ""} \
      ~{if defined(figFigFontSize) then ("--fig-fontsize " +  '"' + figFigFontSize + '"') else ""} \
      ~{true="--frameon" false="" frameFrameOn} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(useUseKey) then ("--use-key " +  '"' + useUseKey + '"') else ""} \
      ~{true="--layout" false="" layoutLayout} \
      ~{if defined(inInItPos) then ("--init-pos " +  '"' + inInItPos + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(transitionsTransitions) then ("--transitions " +  '"' + transitionsTransitions + '"') else ""} \
      ~{true="--single-component" false="" singleSingleComponent} \
      ~{true="--solid-edges" false="" solidSolidEdges} \
      ~{if defined(basisBasis) then ("--basis " +  '"' + basisBasis + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{true="--legend-loc" false="" legendLegendLoc} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(nodeNodeSizeScale) then ("--node-size-scale " +  '"' + nodeNodeSizeScale + '"') else ""} \
      ~{if defined(fontFontSize) then ("--fontsize " +  '"' + fontFontSize + '"') else ""} \
      ~{if defined(edgeEdgeWidthScale) then ("--edge-width-scale " +  '"' + edgeEdgeWidthScale + '"') else ""} \
      ~{if defined(arrowsizeArrowsize) then ("--arrowsize " +  '"' + arrowsizeArrowsize + '"') else ""}
  >>>
}