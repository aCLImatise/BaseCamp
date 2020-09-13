version 1.0

task CoverageFromFastx {
  input {
    String? coverage
    Boolean? longest
    String base_calls
    String ref_len
  }
  command <<<
    coverage_from_fastx \
      ~{base_calls} \
      ~{ref_len} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if (longest) then "--longest" else ""}
  >>>
  parameter_meta {
    coverage: "Calculate fraction of reads required for this coverage.\\n(default: None)"
    longest: "Use the longest reads when calculating fraction reads\\nrequired for a given coverage. (default: False)\\n"
    base_calls: "input fastx file."
    ref_len: "reference length (e.g. 4.8kb/mb/gb) or reference fastx\\nfrom which to calculate length."
  }
  output {
    File out_stdout = stdout()
  }
}