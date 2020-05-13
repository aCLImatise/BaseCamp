version 1.0

task PhyluceAlignRandomlySampleAndConcatenate {
  input {
    String alignmentsAlignments
    String outputOutput
    String sampleSampleSize
    String replicatesReplicates
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_align_randomly_sample_and_concatenate \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sampleSampleSize) then ("--sample-size " +  '"' + sampleSampleSize + '"') else ""} \
      ~{if defined(replicatesReplicates) then ("--replicates " +  '"' + replicatesReplicates + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}