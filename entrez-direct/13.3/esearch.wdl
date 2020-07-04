version 1.0

task Esearch {
  input {
    Boolean? db
    Boolean? query
    Boolean? sort
    Boolean? days
    Boolean? date_type
    Boolean? min_date
    Boolean? maxdate
    Boolean? field
    Boolean? pairs
    Boolean? spell
    Boolean? label
    String snp
  }
  command <<<
    esearch \
      ~{snp} \
      ~{true="-db" false="" db} \
      ~{true="-query" false="" query} \
      ~{true="-sort" false="" sort} \
      ~{true="-days" false="" days} \
      ~{true="-datetype" false="" date_type} \
      ~{true="-mindate" false="" min_date} \
      ~{true="-maxdate" false="" maxdate} \
      ~{true="-field" false="" field} \
      ~{true="-pairs" false="" pairs} \
      ~{true="-spell" false="" spell} \
      ~{true="-label" false="" label}
  >>>
  parameter_meta {
    db: "Database name"
    query: "Query string"
    sort: "Result presentation order"
    days: "Number of days in the past"
    date_type: "Date field abbreviation"
    min_date: "Start of date range"
    maxdate: "End of date range"
    field: "Query words individually in field"
    pairs: "Query overlapping word pairs"
    spell: "Correct misspellings in query"
    label: "Alias for query step"
    snp: "Chromosome Base Position Default Order Heterozygosity Organism SNP_ID Success Rate"
  }
}