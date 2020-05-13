version 1.0

task VtoolsReportPlotPhenoFields {
  input {
    Boolean samplesSamples
    File saveSaveData
    File saveSaveScript
    String widthWidth
    String heightHeight
    Boolean vV
    String histHist
    Boolean normNormCurve
    String dotDot
    String dotDotSize
    String discreteDiscreteColor
    String boxBox
    Array[String]+ stratifyStratify
    String outlierOutlierSize
    String colorColor
    String? fieldsFields
  }
  command <<<
    vtools_report plot_pheno_fields \
      ~{fieldsFields} \
      ~{true="--samples" false="" samplesSamples} \
      ~{if defined(saveSaveData) then ("--save_data " +  '"' + saveSaveData + '"') else ""} \
      ~{if defined(saveSaveScript) then ("--save_script " +  '"' + saveSaveScript + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(histHist) then ("--hist " +  '"' + histHist + '"') else ""} \
      ~{true="--norm_curve" false="" normNormCurve} \
      ~{if defined(dotDot) then ("--dot " +  '"' + dotDot + '"') else ""} \
      ~{if defined(dotDotSize) then ("--dot_size " +  '"' + dotDotSize + '"') else ""} \
      ~{if defined(discreteDiscreteColor) then ("--discrete_color " +  '"' + discreteDiscreteColor + '"') else ""} \
      ~{if defined(boxBox) then ("--box " +  '"' + boxBox + '"') else ""} \
      ~{if defined(stratifyStratify) then ("--stratify " +  '"' + stratifyStratify + '"') else ""} \
      ~{if defined(outlierOutlierSize) then ("--outlier_size " +  '"' + outlierOutlierSize + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}