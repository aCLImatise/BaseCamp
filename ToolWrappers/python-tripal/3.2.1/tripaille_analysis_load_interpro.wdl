version 1.0

task TripailleAnalysisLoadInterpro {
  input {
    String? interpro_parameters
    String? query_type
    Boolean? query_unique_name
    Boolean? parse_go
    Boolean? no_wait
    String? algorithm
    String? source_version
    String? source_uri
    String? description
    String? date_executed
    String results
  }
  command <<<
    tripaille analysis load_interpro \
      ~{results} \
      ~{if defined(interpro_parameters) then ("--interpro_parameters " +  '"' + interpro_parameters + '"') else ""} \
      ~{if defined(query_type) then ("--query_type " +  '"' + query_type + '"') else ""} \
      ~{if (query_unique_name) then "--query_uniquename" else ""} \
      ~{if (parse_go) then "--parse_go" else ""} \
      ~{if (no_wait) then "--no_wait" else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(source_version) then ("--sourceversion " +  '"' + source_version + '"') else ""} \
      ~{if defined(source_uri) then ("--sourceuri " +  '"' + source_uri + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(date_executed) then ("--date_executed " +  '"' + date_executed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    interpro_parameters: "InterProScan parameters used to produce these"
    query_type: "The feature type (e.g. 'gene', 'mRNA', 'contig')\\nof the query. It must be a valid Sequence\\nOntology term."
    query_unique_name: "Use this if the query_re regular expression\\nmatches unique names instead of names in the\\ndatabase."
    parse_go: "Load GO annotation to the database"
    no_wait: "Do not wait for job to complete"
    algorithm: "analysis algorithm"
    source_version: "analysis sourceversion"
    source_uri: "analysis sourceuri"
    description: "analysis description"
    date_executed: "analysis date_executed (yyyy-mm-dd)"
    results: "--query_re TEXT             The regular expression that can uniquely"
  }
  output {
    File out_stdout = stdout()
  }
}