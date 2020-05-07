version 1.0

task FastenClean {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
    Int minMinLength
    Float minMinAvgQuality
    Int minMinTrimQuality
  }
  command <<<
    fasten_clean \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(minMinAvgQuality) then ("--min-avg-quality " +  '"' + minMinAvgQuality + '"') else ""} \
      ~{if defined(minMinTrimQuality) then ("--min-trim-quality " +  '"' + minMinTrimQuality + '"') else ""}
  >>>
}