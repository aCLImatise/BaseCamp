version 1.0

task MedpyIntensityRangeStandardization.py {
  input {
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean forceForce
    String loadLoadModel
    String saveSaveModel
    String cutCutOffP
    String landmarkLandmarkP
    String stdStdSpace
    String saveSaveImages
    String thresholdThreshold
    Array[String]+ masksMasks
    Boolean ignoreIgnore
    String? imagesImages
  }
  command <<<
    medpy_intensity_range_standardization.py \
      ~{imagesImages} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(loadLoadModel) then ("--load-model " +  '"' + loadLoadModel + '"') else ""} \
      ~{if defined(saveSaveModel) then ("--save-model " +  '"' + saveSaveModel + '"') else ""} \
      ~{if defined(cutCutOffP) then ("--cutoffp " +  '"' + cutCutOffP + '"') else ""} \
      ~{if defined(landmarkLandmarkP) then ("--landmarkp " +  '"' + landmarkLandmarkP + '"') else ""} \
      ~{if defined(stdStdSpace) then ("--stdspace " +  '"' + stdStdSpace + '"') else ""} \
      ~{if defined(saveSaveImages) then ("--save-images " +  '"' + saveSaveImages + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(masksMasks) then ("--masks " +  '"' + masksMasks + '"') else ""} \
      ~{true="--ignore" false="" ignoreIgnore}
  >>>
}