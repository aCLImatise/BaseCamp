version 1.0

task FastenQualityFilter {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
    Int maxMaxQuality
  }
  command <<<
    fasten_quality_filter \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(maxMaxQuality) then ("--max-quality " +  '"' + maxMaxQuality + '"') else ""}
  >>>
}