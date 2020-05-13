version 1.0

task ScaterPlotReducedDim.R {
  input {
    String inputInputObjectFile
    String useUseDimRed
    String nNComponents
    String percentPercentVar
    String colourColourBy
    String shapeShapeBy
    Int sizeSizeBy
    String byByExprsValues
    String byByShowSingle
    String pngPngWidth
    String pngPngHeight
    String outputOutputImageFile
  }
  command <<<
    scater-plot-reduced-dim.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(useUseDimRed) then ("--use-dimred " +  '"' + useUseDimRed + '"') else ""} \
      ~{if defined(nNComponents) then ("--ncomponents " +  '"' + nNComponents + '"') else ""} \
      ~{if defined(percentPercentVar) then ("--percent-var " +  '"' + percentPercentVar + '"') else ""} \
      ~{if defined(colourColourBy) then ("--colour-by " +  '"' + colourColourBy + '"') else ""} \
      ~{if defined(shapeShapeBy) then ("--shape-by " +  '"' + shapeShapeBy + '"') else ""} \
      ~{if defined(sizeSizeBy) then ("--size-by " +  '"' + sizeSizeBy + '"') else ""} \
      ~{if defined(byByExprsValues) then ("--by_exprs-values " +  '"' + byByExprsValues + '"') else ""} \
      ~{if defined(byByShowSingle) then ("--by_show_single " +  '"' + byByShowSingle + '"') else ""} \
      ~{if defined(pngPngWidth) then ("--png-width " +  '"' + pngPngWidth + '"') else ""} \
      ~{if defined(pngPngHeight) then ("--png-height " +  '"' + pngPngHeight + '"') else ""} \
      ~{if defined(outputOutputImageFile) then ("--output-image-file " +  '"' + outputOutputImageFile + '"') else ""}
  >>>
}