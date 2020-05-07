version 1.0

task SeuratDimPlot.R {
  input {
    String inputInputObjectFile
    String inputInputFormat
    String reductionReductionUse
    String dimDim1
    String dimDim2
    String cellsCellsUse
    String ptPtSize
    String labelLabelSize
    String doDoLabel
    String groupGroupBy
    String plotPlotTitle
    String doDoBare
    String colsColsUse
    String ptPtShape
    String coordCoordFixed
    String noNoAxes
    String darkDarkTheme
    String plotPlotOrder
    String pngPngWidth
    String pngPngHeight
    String outputOutputImageFile
  }
  command <<<
    seurat-dim-plot.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(reductionReductionUse) then ("--reduction-use " +  '"' + reductionReductionUse + '"') else ""} \
      ~{if defined(dimDim1) then ("--dim-1 " +  '"' + dimDim1 + '"') else ""} \
      ~{if defined(dimDim2) then ("--dim-2 " +  '"' + dimDim2 + '"') else ""} \
      ~{if defined(cellsCellsUse) then ("--cells-use " +  '"' + cellsCellsUse + '"') else ""} \
      ~{if defined(ptPtSize) then ("--pt-size " +  '"' + ptPtSize + '"') else ""} \
      ~{if defined(labelLabelSize) then ("--label-size " +  '"' + labelLabelSize + '"') else ""} \
      ~{if defined(doDoLabel) then ("--do-label " +  '"' + doDoLabel + '"') else ""} \
      ~{if defined(groupGroupBy) then ("--group-by " +  '"' + groupGroupBy + '"') else ""} \
      ~{if defined(plotPlotTitle) then ("--plot-title " +  '"' + plotPlotTitle + '"') else ""} \
      ~{if defined(doDoBare) then ("--do-bare " +  '"' + doDoBare + '"') else ""} \
      ~{if defined(colsColsUse) then ("--cols-use " +  '"' + colsColsUse + '"') else ""} \
      ~{if defined(ptPtShape) then ("--pt-shape " +  '"' + ptPtShape + '"') else ""} \
      ~{if defined(coordCoordFixed) then ("--coord-fixed " +  '"' + coordCoordFixed + '"') else ""} \
      ~{if defined(noNoAxes) then ("--no-axes " +  '"' + noNoAxes + '"') else ""} \
      ~{if defined(darkDarkTheme) then ("--dark-theme " +  '"' + darkDarkTheme + '"') else ""} \
      ~{if defined(plotPlotOrder) then ("--plot-order " +  '"' + plotPlotOrder + '"') else ""} \
      ~{if defined(pngPngWidth) then ("--png-width " +  '"' + pngPngWidth + '"') else ""} \
      ~{if defined(pngPngHeight) then ("--png-height " +  '"' + pngPngHeight + '"') else ""} \
      ~{if defined(outputOutputImageFile) then ("--output-image-file " +  '"' + outputOutputImageFile + '"') else ""}
  >>>
}