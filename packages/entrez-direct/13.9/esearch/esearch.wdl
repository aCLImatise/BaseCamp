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
    String gene
    String geo_profiles
    String deviation
    String outliers
    String pubmed
    String journal
    String relevance
    String accession
    String snp
  }
  command <<<
    esearch \
      ~{gene} \
      ~{geo_profiles} \
      ~{deviation} \
      ~{outliers} \
      ~{pubmed} \
      ~{journal} \
      ~{relevance} \
      ~{accession} \
      ~{snp} \
      ~{if (db) then "-db" else ""} \
      ~{if (query) then "-query" else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if (days) then "-days" else ""} \
      ~{if (date_type) then "-datetype" else ""} \
      ~{if (min_date) then "-mindate" else ""} \
      ~{if (maxdate) then "-maxdate" else ""} \
      ~{if (field) then "-field" else ""} \
      ~{if (pairs) then "-pairs" else ""} \
      ~{if (spell) then "-spell" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
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
    gene: "Chromosome\\nGene Weight\\nName\\nRelevance"
    geo_profiles: "Default Order"
    deviation: "Mean Value"
    outliers: "Subgroup Effect"
    pubmed: "First Author"
    journal: "Last Author"
    relevance: "Title"
    accession: "Date Modified"
    snp: "Chromosome Base Position\\nDefault Order\\nHeterozygosity\\nOrganism\\nSNP_ID\\nSuccess Rate\\n"
  }
  output {
    File out_stdout = stdout()
  }
}