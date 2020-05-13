version 1.0

task KatPlotProfile {
  input {
    String outputOutput
    String outputOutputType
    String titleTitle
    String xXLabel
    String yYLabel
    String y2Y2Label
    String xXMax
    String xXMin
    String yYMax
    String yYMin
    String y2Y2Max
    String widthWidth
    String heightHeight
    String indexIndex
    String headerHeader
    String dpiDpi
    Boolean verboseVerbose
    String? sectSectProfileFile
    String? sectSectProfileFile2
  }
  command <<<
    kat_plot_profile \
      ~{sectSectProfileFile} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output_type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(xXLabel) then ("--x_label " +  '"' + xXLabel + '"') else ""} \
      ~{if defined(yYLabel) then ("--y_label " +  '"' + yYLabel + '"') else ""} \
      ~{if defined(y2Y2Label) then ("--y2_label " +  '"' + y2Y2Label + '"') else ""} \
      ~{if defined(xXMax) then ("--x_max " +  '"' + xXMax + '"') else ""} \
      ~{if defined(xXMin) then ("--x_min " +  '"' + xXMin + '"') else ""} \
      ~{if defined(yYMax) then ("--y_max " +  '"' + yYMax + '"') else ""} \
      ~{if defined(yYMin) then ("--y_min " +  '"' + yYMin + '"') else ""} \
      ~{if defined(y2Y2Max) then ("--y2_max " +  '"' + y2Y2Max + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{sectSectProfileFile2}
  >>>
}