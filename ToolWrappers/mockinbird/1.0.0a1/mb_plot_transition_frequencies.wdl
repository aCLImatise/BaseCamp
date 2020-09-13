version 1.0

task Mbplottransitionfrequencies {
  input {
    String? coverage
    String? limit
    Boolean? verbose
    Boolean? remove
  }
  command <<<
    mb_plot_transition_frequencies \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (remove) then "--remove" else ""}
  >>>
  parameter_meta {
    coverage: "minimum coverage"
    limit: "y-axis limit"
    verbose: "verbose output"
    remove: "remove temporary files"
  }
  output {
    File out_stdout = stdout()
  }
}