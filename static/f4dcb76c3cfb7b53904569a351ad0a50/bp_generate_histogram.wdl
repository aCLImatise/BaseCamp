version 1.0

task BpGenerateHistogram.pl {
  input {
    Boolean? dsn
    Boolean? adaptor
    Boolean? user
    Boolean? pass
    Boolean? bin
    String? aggregator
    Boolean? sort
    Boolean? merge
  }
  command <<<
    bp_generate_histogram.pl \
      ~{true="--dsn" false="" dsn} \
      ~{true="--adaptor" false="" adaptor} \
      ~{true="--user" false="" user} \
      ~{true="--pass" false="" pass} \
      ~{true="--bin" false="" bin} \
      ~{if defined(aggregator) then ("--aggregator " +  '"' + aggregator + '"') else ""} \
      ~{true="--sort" false="" sort} \
      ~{true="--merge" false="" merge}
  >>>
  parameter_meta {
    dsn: "<dsn>       Data source (default dbi:mysql:test)"
    adaptor: "<adaptor>   Schema adaptor (default dbi::mysqlopt)"
    user: "<user>      Username for mysql authentication"
    pass: "<password>  Password for mysql authentication"
    bin: "<bp>        Bin size in base pairs."
    aggregator: "Comma-separated list of aggregators"
    sort: "Sort the resulting list by type and bin"
    merge: "Merge features with same method but different sources"
  }
}