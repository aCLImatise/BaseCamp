version 1.0

task ChicPlotViewpoint {
  input {
    Array[Int]+ interactionInteractionFile
    String rangeRange
    String backgroundBackgroundModelFile
    Int interactionInteractionFileFolder
    Array[String]+ differentialDifferentialTestResult
    String significantSignificantInteractionFileFolder
    String differentialDifferentialTestResultsFolder
    Array[String]+ significantSignificantInteractions
    Boolean plotPlotSignificantInteractions
    String outputOutputFolder
    String outputOutputFormat
    String dpiDpi
    String binBinResolution
    String colormapColormapPValue
    Int maxpMaxpValue
    Int minMinPValue
    Boolean pPValue
    Array[String]+ pPValueSignificanceLevels
    String xXFold
    Boolean truncateTruncateZeropValues
    String outOutFilename
    Boolean batchBatchMode
    String plotPlotSampleNumber
    Array[String]+ colorColorList
    String threadsThreads
  }
  command <<<
    chicPlotViewpoint \
      ~{if defined(interactionInteractionFile) then ("--interactionFile " +  '"' + interactionInteractionFile + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{if defined(backgroundBackgroundModelFile) then ("--backgroundModelFile " +  '"' + backgroundBackgroundModelFile + '"') else ""} \
      ~{if defined(interactionInteractionFileFolder) then ("--interactionFileFolder " +  '"' + interactionInteractionFileFolder + '"') else ""} \
      ~{if defined(differentialDifferentialTestResult) then ("--differentialTestResult " +  '"' + differentialDifferentialTestResult + '"') else ""} \
      ~{if defined(significantSignificantInteractionFileFolder) then ("--significantInteractionFileFolder " +  '"' + significantSignificantInteractionFileFolder + '"') else ""} \
      ~{if defined(differentialDifferentialTestResultsFolder) then ("--differentialTestResultsFolder " +  '"' + differentialDifferentialTestResultsFolder + '"') else ""} \
      ~{if defined(significantSignificantInteractions) then ("--significantInteractions " +  '"' + significantSignificantInteractions + '"') else ""} \
      ~{true="--plotSignificantInteractions" false="" plotPlotSignificantInteractions} \
      ~{if defined(outputOutputFolder) then ("--outputFolder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--outputFormat " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(binBinResolution) then ("--binResolution " +  '"' + binBinResolution + '"') else ""} \
      ~{if defined(colormapColormapPValue) then ("--colorMapPvalue " +  '"' + colormapColormapPValue + '"') else ""} \
      ~{if defined(maxpMaxpValue) then ("--maxPValue " +  '"' + maxpMaxpValue + '"') else ""} \
      ~{if defined(minMinPValue) then ("--minPValue " +  '"' + minMinPValue + '"') else ""} \
      ~{true="--pValue" false="" pPValue} \
      ~{if defined(pPValueSignificanceLevels) then ("--pValueSignificanceLevels " +  '"' + pPValueSignificanceLevels + '"') else ""} \
      ~{if defined(xXFold) then ("--xFold " +  '"' + xXFold + '"') else ""} \
      ~{true="--truncateZeroPvalues" false="" truncateTruncateZeropValues} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{true="--batchMode" false="" batchBatchMode} \
      ~{if defined(plotPlotSampleNumber) then ("--plotSampleNumber " +  '"' + plotPlotSampleNumber + '"') else ""} \
      ~{if defined(colorColorList) then ("--colorList " +  '"' + colorColorList + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}