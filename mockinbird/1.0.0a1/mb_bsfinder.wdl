version 1.0

task MbBsfinder {
  input {
    String thresholdThreshold
    Int minMinCov
    String referenceReference
    String mutationMutation
    Boolean verboseVerbose
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    mb-bsfinder \
      ~{inputInputFile} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(mutationMutation) then ("--mutation " +  '"' + mutationMutation + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{outputOutputFile}
  >>>
}