version 1.0

task MbPlotTransitionFrequencies {
  input {
    String? coverage
    String? limit
    Boolean? verbose
    Boolean? remove
  }
  command <<<
    mb-plot-transition-frequencies \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--remove" false="" remove}
  >>>
  parameter_meta {
    coverage: "minimum coverage"
    limit: "y-axis limit"
    verbose: "verbose output"
    remove: "remove temporary files"
  }
}