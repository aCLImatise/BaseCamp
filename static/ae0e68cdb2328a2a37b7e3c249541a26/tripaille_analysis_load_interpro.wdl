version 1.0

task TripailleAnalysisLoadInterpro {
  input {
    String? interpro_parameters
    String? query_re
    String? query_type
    Boolean? query_unique_name
    Boolean? parse_go
    Boolean? no_wait
    String? algorithm
    String? source_version
    String? source_uri
    String? description
    String? date_executed
    String name
    String program
    String program_version
  }
  command <<<
    tripaille analysis load_interpro \
      ~{name} \
      ~{program} \
      ~{program_version} \
      ~{if defined(interpro_parameters) then ("--interpro_parameters " +  '"' + interpro_parameters + '"') else ""} \
      ~{if defined(query_re) then ("--query_re " +  '"' + query_re + '"') else ""} \
      ~{if defined(query_type) then ("--query_type " +  '"' + query_type + '"') else ""} \
      ~{true="--query_uniquename" false="" query_unique_name} \
      ~{true="--parse_go" false="" parse_go} \
      ~{true="--no_wait" false="" no_wait} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(source_version) then ("--sourceversion " +  '"' + source_version + '"') else ""} \
      ~{if defined(source_uri) then ("--sourceuri " +  '"' + source_uri + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(date_executed) then ("--date_executed " +  '"' + date_executed + '"') else ""}
  >>>
  parameter_meta {
    interpro_parameters: "InterProScan parameters used to produce these results"
    query_re: "The regular expression that can uniquely identify the query name. This parameters is required if the feature name is not the first word in the blast query name."
    query_type: "The feature type (e.g. 'gene', 'mRNA', 'contig') of the query. It must be a valid Sequence Ontology term."
    query_unique_name: "Use this if the query_re regular expression matches unique names instead of names in the database."
    parse_go: "Load GO annotation to the database"
    no_wait: "Do not wait for job to complete"
    algorithm: "analysis algorithm"
    source_version: "analysis sourceversion"
    source_uri: "analysis sourceuri"
    description: "analysis description"
    date_executed: "analysis date_executed (yyyy-mm-dd)"
    name: ""
    program: ""
    program_version: ""
  }
}