version 1.0

task PePr {
  input {
    String parameterParameterFile
    String chip1Chip1
    String inputInput1
    String chip2Chip2
    String inputInput2
    String fileFileFormat
    String shiftShiftSize
    String windowWindowSize
    Boolean diffDiff
    String nameName
    String thresholdThreshold
    String peakPeakType
    String numNumProcessors
    String inputInputDirectory
    String outputOutputDirectory
    String normalizationNormalization
    String keepKeepMaxDup
  }
  command <<<
    PePr \
      ~{if defined(parameterParameterFile) then ("--parameter-file " +  '"' + parameterParameterFile + '"') else ""} \
      ~{if defined(chip1Chip1) then ("--chip1 " +  '"' + chip1Chip1 + '"') else ""} \
      ~{if defined(inputInput1) then ("--input1 " +  '"' + inputInput1 + '"') else ""} \
      ~{if defined(chip2Chip2) then ("--chip2 " +  '"' + chip2Chip2 + '"') else ""} \
      ~{if defined(inputInput2) then ("--input2 " +  '"' + inputInput2 + '"') else ""} \
      ~{if defined(fileFileFormat) then ("--file-format " +  '"' + fileFileFormat + '"') else ""} \
      ~{if defined(shiftShiftSize) then ("--shiftsize " +  '"' + shiftShiftSize + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--windowsize " +  '"' + windowWindowSize + '"') else ""} \
      ~{true="--diff" false="" diffDiff} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(peakPeakType) then ("--peaktype " +  '"' + peakPeakType + '"') else ""} \
      ~{if defined(numNumProcessors) then ("--num-processors " +  '"' + numNumProcessors + '"') else ""} \
      ~{if defined(inputInputDirectory) then ("--input-directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(normalizationNormalization) then ("--normalization " +  '"' + normalizationNormalization + '"') else ""} \
      ~{if defined(keepKeepMaxDup) then ("--keep-max-dup " +  '"' + keepKeepMaxDup + '"') else ""}
  >>>
}