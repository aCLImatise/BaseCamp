version 1.0

task NcbiDatabaseFetcher.sh {
  input {
    String? usage_message
  }
  command <<<
    ncbi_database_fetcher.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}