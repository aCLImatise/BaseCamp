version 1.0

task GrootReport {
  input {
    String bamBamFile
    Float covCovCutOff
    Boolean lowLowCov
    String indexIndexDir
    String logLog
    Int processorsProcessors
    Boolean profilingProfiling
    String? flagsFlags
  }
  command <<<
    groot report \
      ~{flagsFlags} \
      ~{if defined(bamBamFile) then ("--bamFile " +  '"' + bamBamFile + '"') else ""} \
      ~{if defined(covCovCutOff) then ("--covCutoff " +  '"' + covCovCutOff + '"') else ""} \
      ~{true="--lowCov" false="" lowLowCov} \
      ~{if defined(indexIndexDir) then ("--indexDir " +  '"' + indexIndexDir + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--profiling" false="" profilingProfiling}
  >>>
}