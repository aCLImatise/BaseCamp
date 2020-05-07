version 1.0

task ChicSignificantInteractions {
  input {
    String xXFoldBackground
    String looseLoosePValue
    Array[Int]+ interactionInteractionFile
    String pPValue
    String backgroundBackgroundModelFile
    String rangeRange
    String targetTargetFileList
    Boolean batchBatchMode
    String threadsThreads
    Boolean truncateTruncateZeropValues
    String fixateFixateRange
    String peakPeakInteractionsThreshold
    String resolutionResolution
    String computeComputeSampleNumber
  }
  command <<<
    chicSignificantInteractions \
      ~{if defined(xXFoldBackground) then ("--xFoldBackground " +  '"' + xXFoldBackground + '"') else ""} \
      ~{if defined(looseLoosePValue) then ("--loosePValue " +  '"' + looseLoosePValue + '"') else ""} \
      ~{if defined(interactionInteractionFile) then ("--interactionFile " +  '"' + interactionInteractionFile + '"') else ""} \
      ~{if defined(pPValue) then ("--pValue " +  '"' + pPValue + '"') else ""} \
      ~{if defined(backgroundBackgroundModelFile) then ("--backgroundModelFile " +  '"' + backgroundBackgroundModelFile + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{if defined(targetTargetFileList) then ("--targetFileList " +  '"' + targetTargetFileList + '"') else ""} \
      ~{true="--batchMode" false="" batchBatchMode} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--truncateZeroPvalues" false="" truncateTruncateZeropValues} \
      ~{if defined(fixateFixateRange) then ("--fixateRange " +  '"' + fixateFixateRange + '"') else ""} \
      ~{if defined(peakPeakInteractionsThreshold) then ("--peakInteractionsThreshold " +  '"' + peakPeakInteractionsThreshold + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(computeComputeSampleNumber) then ("--computeSampleNumber " +  '"' + computeComputeSampleNumber + '"') else ""}
  >>>
}