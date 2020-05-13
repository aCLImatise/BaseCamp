version 1.0

task SgaOverlap {
  input {
    Boolean verboseVerbose
    String threadsThreads
    Boolean errorErrorRate
    String minMinOverlap
    String prefixPrefix
    File targetTargetFile
    Boolean exhaustiveExhaustive
    Boolean exactExact
    String seedSeedLength
    String seedSeedStride
    String sampleSampleRate
  }
  command <<<
    sga overlap \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--error-rate" false="" errorErrorRate} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(targetTargetFile) then ("--target-file " +  '"' + targetTargetFile + '"') else ""} \
      ~{true="--exhaustive" false="" exhaustiveExhaustive} \
      ~{true="--exact" false="" exactExact} \
      ~{if defined(seedSeedLength) then ("--seed-length " +  '"' + seedSeedLength + '"') else ""} \
      ~{if defined(seedSeedStride) then ("--seed-stride " +  '"' + seedSeedStride + '"') else ""} \
      ~{if defined(sampleSampleRate) then ("--sample-rate " +  '"' + sampleSampleRate + '"') else ""}
  >>>
}