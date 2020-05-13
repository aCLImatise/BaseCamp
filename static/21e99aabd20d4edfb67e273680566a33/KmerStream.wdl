version 1.0

task KmerStream {
  input {
    Boolean binaryBinary
    Boolean tsvTsv
    Boolean verboseVerbose
    Boolean onlineOnline
    Boolean q64Q64
  }
  command <<<
    KmerStream \
      ~{true="--binary" false="" binaryBinary} \
      ~{true="--tsv" false="" tsvTsv} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--online" false="" onlineOnline} \
      ~{true="--q64" false="" q64Q64}
  >>>
}