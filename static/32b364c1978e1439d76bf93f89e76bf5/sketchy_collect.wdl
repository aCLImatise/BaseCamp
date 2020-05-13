version 1.0

task SketchyCollect {
  input {
    File directoryDirectory
    Boolean nextNextFlow
    String prefixPrefix
    String subsetSubset
    File referenceReference
    Boolean heatHeatMap
    Boolean timeTime
    Float thresholdThreshold
    Boolean statisticsStatistics
    Float scaleScale
    Boolean coverageCoverage
    String imageImageFormat
  }
  command <<<
    sketchy collect \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{true="--nextflow" false="" nextNextFlow} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(subsetSubset) then ("--subset " +  '"' + subsetSubset + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--heatmap" false="" heatHeatMap} \
      ~{true="--time" false="" timeTime} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--statistics" false="" statisticsStatistics} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{if defined(imageImageFormat) then ("--image_format " +  '"' + imageImageFormat + '"') else ""}
  >>>
}