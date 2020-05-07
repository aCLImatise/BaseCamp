version 1.0

task VtoolsReportPlotAssociationQq {
  input {
    Int shapeShape
    Boolean fixedFixedShape
    Boolean noNoSlope
    String titleTitle
    String colorColor
    String widthWidthHeight
    Boolean sameSamePage
    File outputOutput
    Boolean bonferroniBonferroni
    Array[String]+ hHLines
    Int labelLabelTop
    Array[String]+ labelLabelThese
    Int fontFontSize
  }
  command <<<
    vtools_report plot_association qq \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{true="--fixed_shape" false="" fixedFixedShape} \
      ~{true="--no_slope" false="" noNoSlope} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{if defined(widthWidthHeight) then ("--width_height " +  '"' + widthWidthHeight + '"') else ""} \
      ~{true="--same_page" false="" sameSamePage} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--bonferroni" false="" bonferroniBonferroni} \
      ~{if defined(hHLines) then ("--hlines " +  '"' + hHLines + '"') else ""} \
      ~{if defined(labelLabelTop) then ("--label_top " +  '"' + labelLabelTop + '"') else ""} \
      ~{if defined(labelLabelThese) then ("--label_these " +  '"' + labelLabelThese + '"') else ""} \
      ~{if defined(fontFontSize) then ("--font_size " +  '"' + fontFontSize + '"') else ""}
  >>>
}