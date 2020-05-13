version 1.0

task FastenMetrics {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
    Boolean eachEachRead
    String distributionDistribution
  }
  command <<<
    fasten_metrics \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--each-read" false="" eachEachRead} \
      ~{if defined(distributionDistribution) then ("--distribution " +  '"' + distributionDistribution + '"') else ""}
  >>>
}