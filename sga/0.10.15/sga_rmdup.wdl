version 1.0

task SgaRmdup {
  input {
    Boolean verboseVerbose
    File outOut
    String prefixPrefix
    Boolean errorErrorRate
    String threadsThreads
    String sampleSampleRate
  }
  command <<<
    sga rmdup \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--error-rate" false="" errorErrorRate} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(sampleSampleRate) then ("--sample-rate " +  '"' + sampleSampleRate + '"') else ""}
  >>>
}