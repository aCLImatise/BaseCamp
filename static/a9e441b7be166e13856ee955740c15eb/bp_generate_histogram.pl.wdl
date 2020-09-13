version 1.0

task BpGenerateHistogrampl {
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
    bp_generate_histogram_pl \
      ~{if (dsn) then "--dsn" else ""} \
      ~{if (adaptor) then "--adaptor" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (pass) then "--pass" else ""} \
      ~{if (bin) then "--bin" else ""} \
      ~{if defined(aggregator) then ("--aggregator " +  '"' + aggregator + '"') else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (merge) then "--merge" else ""}
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
  output {
    File out_stdout = stdout()
  }
}