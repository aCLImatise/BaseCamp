version 1.0

task VtoolsReportPlotGenoFields {
  input {
    String variantsVariants
    Boolean samplesSamples
    Boolean genotypesGenotypes
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
    vtools_report plot_geno_fields \
      ~{fieldsFields} \
      ~{if defined(variantsVariants) then ("--variants " +  '"' + variantsVariants + '"') else ""} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--genotypes" false="" genotypesGenotypes} \
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