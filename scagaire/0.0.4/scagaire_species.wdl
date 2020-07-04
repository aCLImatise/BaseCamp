version 1.0

task ScagaireSpecies {
  input {
    Boolean? overview
    Boolean? detailed
    Boolean? debug
    Boolean? verbose
  }
  command <<<
    scagaire_species \
      ~{true="--overview" false="" overview} \
      ~{true="--detailed" false="" detailed} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    overview: "Print out an overview of the database (default: False)"
    detailed: "Turn on detailed output (default: False)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
  }
}