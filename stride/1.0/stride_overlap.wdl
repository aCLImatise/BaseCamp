version 1.0

task StrideOverlap {
  input {
    Boolean verboseVerbose
    String threadsThreads
    Boolean errorErrorRate
    String minMinOverlap
    File targetTargetFile
    Boolean pairedPairedOverlap
    Boolean exhaustiveExhaustive
    Boolean exactExact
    String seedSeedLength
    String seedSeedStride
    String sampleSampleRate
  }
  command <<<
    stride overlap \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--error-rate" false="" errorErrorRate} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(targetTargetFile) then ("--target-file " +  '"' + targetTargetFile + '"') else ""} \
      ~{true="--paired-overlap" false="" pairedPairedOverlap} \
      ~{true="--exhaustive" false="" exhaustiveExhaustive} \
      ~{true="--exact" false="" exactExact} \
      ~{if defined(seedSeedLength) then ("--seed-length " +  '"' + seedSeedLength + '"') else ""} \
      ~{if defined(seedSeedStride) then ("--seed-stride " +  '"' + seedSeedStride + '"') else ""} \
      ~{if defined(sampleSampleRate) then ("--sample-rate " +  '"' + sampleSampleRate + '"') else ""}
  >>>
}