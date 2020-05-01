version 1.0

task NegativeTrainingSampler {
  input {
    File labelLabelFile
    File referenceReferenceFile
    File genomeGenomeFile
    File outputOutputFile
    Boolean bBGzip
    File logLog
    Boolean verboseVerbose
    Int coresCores
    String memoryMemory
  }
  command <<<
    negative_training_sampler \
      ~{if defined(labelLabelFile) then ("--label-file " +  '"' + labelLabelFile + '"') else ""} \
      ~{if defined(referenceReferenceFile) then ("--reference-file " +  '"' + referenceReferenceFile + '"') else ""} \
      ~{if defined(genomeGenomeFile) then ("--genome-file " +  '"' + genomeGenomeFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--bgzip" false="" bBGzip} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""}
  >>>
}