version 1.0

task BpGenerateHistogram.pl {
  input {
    Boolean dsnDsn
    Boolean adaptorAdaptor
    Boolean userUser
    Boolean passPass
    Boolean binBin
    String aggregatorAggregator
    Boolean sortSort
    Boolean mergeMerge
  }
  command <<<
    bp_generate_histogram.pl \
      ~{true="--dsn" false="" dsnDsn} \
      ~{true="--adaptor" false="" adaptorAdaptor} \
      ~{true="--user" false="" userUser} \
      ~{true="--pass" false="" passPass} \
      ~{true="--bin" false="" binBin} \
      ~{if defined(aggregatorAggregator) then ("--aggregator " +  '"' + aggregatorAggregator + '"') else ""} \
      ~{true="--sort" false="" sortSort} \
      ~{true="--merge" false="" mergeMerge}
  >>>
}