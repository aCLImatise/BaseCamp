version 1.0

task FastenSample {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
    Float frequencyFrequency
  }
  command <<<
    fasten_sample \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(frequencyFrequency) then ("--frequency " +  '"' + frequencyFrequency + '"') else ""}
  >>>
}